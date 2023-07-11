#!/usr/bin/env python
#Example of listener of point cloud

import rospy
from std_msgs.msg import Float64MultiArray
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
import ros_numpy
import open3d as o3d
import numpy as np
import copy
import Ditto_transformation
from scipy.spatial.transform import Rotation as R
import saveURDF

import Ditto_pipeline

#Import the packages for the model
import torch
from hydra.experimental import initialize, initialize_config_module, initialize_config_dir, compose
from omegaconf import OmegaConf
import hydra
from src.third_party.ConvONets.conv_onet.generation_two_stage import Generator3D

from unity_robotics_demo_msgs.srv import PositionService, PositionServiceResponse
from robotics_demo. msg import PosRot

#Function to simulate HoloLens receiving the message from Ditto
def callback_hololens(data):
    rospy.loginfo("Hololens Data = ", data.data)

def getCoordinateSystem(size):
    points = [[0, 0, 0], [size, 0, 0], [0, size, 0], [0, 0, size]]
    lines = [[0, 1], [0, 2], [0, 3]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    line_set = o3d.geometry.LineSet()
    line_set.points = o3d.utility.Vector3dVector(points)
    line_set.lines = o3d.utility.Vector2iVector(lines)
    line_set.colors = o3d.utility.Vector3dVector(colors)
    return line_set

#Get rotation matrix
def vector_to_rotation(vector):
    z = np.array(vector)
    z = z / np.linalg.norm(z)
    x = np.array([1, 0, 0])
    x = x - z*(x.dot(z)/z.dot(z))
    x = x / np.linalg.norm(x)
    y = np.cross(z, x)
    return np.c_[x, y, z]

import math
 
def euler_from_quaternion(x, y, z, w):
        """
        Convert a quaternion into euler angles (roll, pitch, yaw)
        roll is rotation around x in radians (counterclockwise)
        pitch is rotation around y in radians (counterclockwise)
        yaw is rotation around z in radians (counterclockwise)
        """
        t0 = +2.0 * (w * x + y * z)
        t1 = +1.0 - 2.0 * (x * x + y * y)
        roll_x = math.atan2(t0, t1)
     
        t2 = +2.0 * (w * y - z * x)
        t2 = +1.0 if t2 > +1.0 else t2
        t2 = -1.0 if t2 < -1.0 else t2
        pitch_y = math.asin(t2)
     
        t3 = +2.0 * (w * z + x * y)
        t4 = +1.0 - 2.0 * (y * y + z * z)
        yaw_z = math.atan2(t3, t4)
     
        return roll_x, pitch_y, yaw_z # in radians

class DittoManager():

    def __init__(self):
        self.src_pcd_list = []
        self.src_pc_list = []
        self.dst_pcd_list = []

        self.scale = 0.
        self.center = 0.
        self.joint = None
        self.pivot = None
        self.data_to_send = Float64MultiArray()
        self.sendFlag = False

        self.count = 0

        #Publisher initialization

        #Initialize ditto model
        with initialize(config_path='../configs/'):
            self.config = compose(
                config_name='config',
                overrides=[
                    'experiment=Ditto_s2m.yaml',
                ], return_hydra_config=True)
        self.config.datamodule.opt.train.data_dir = '../data/'
        self.config.datamodule.opt.val.data_dir = '../data/'
        self.config.datamodule.opt.test.data_dir = '../data/'

        #Load the model
        self.model = hydra.utils.instantiate(self.config.model)
        ckpt = torch.load('../data/Ditto_s2m.ckpt', map_location=torch.device('cpu'))
        self.device = torch.device('cpu')
        self.model.load_state_dict(ckpt['state_dict'], strict=True)
        self.model = self.model.eval().to(self.device)

        self.generator = Generator3D(
            self.model.model,
            device=self.device,
            threshold=0.4,
            seg_threshold=0.5,
            input_type='pointcloud',
            refinement_step=0,
            padding=0.1,
            resolution0=32
        )


    def appendSRC(self, pcd):
        #Save one pcd just for visualization of the transformation back
        if self.count == 0:
            self.count = 1
            self.visPcd = copy.deepcopy(pcd)

        self.src_pcd_list.append(pcd)

        #Append for the scaling of the point clouds
        pc = np.asarray(pcd.points)
        pc_idx = np.random.randint(0, pc.shape[0], size=(2048, ))
        pc = pc[pc_idx]
        self.src_pc_list.append(pc)

        
    def appendDST(self, pcd):
        self.dst_pcd_list.append(pcd)


    def scalePCD(self):
        src_fused_pc = np.concatenate(self.src_pc_list, axis=0)
        #This center is with respect to the QR code already
        self.center = (np.min(src_fused_pc, 0) + np.max(src_fused_pc, 0)) / 2
        self.scale = (np.max(src_fused_pc, 0) - np.min(src_fused_pc, 0)).max()
        self.scale *= 1.1

    def transformPCDSRC(self):

        for k in range(len(self.src_pcd_list)):
            center_transform = np.eye(4)
            center_transform[:3, 3] = -self.center
            self.src_pcd_list[k].transform(center_transform)
            self.src_pcd_list[k].scale(1 / self.scale, np.zeros((3, 1)))
            
            #Rotation
            R = self.src_pcd_list[k].get_rotation_matrix_from_xyz((np.pi / 2, np.pi/2, 0))
            self.src_pcd_list[k].rotate(R, center=(0, 0, 0))
            
    def transformPCDDST(self):

        for k in range(len(self.dst_pcd_list)):
            center_transform = np.eye(4)
            center_transform[:3, 3] = -self.center
            self.dst_pcd_list[k].transform(center_transform)
            self.dst_pcd_list[k].scale(1 / self.scale, np.zeros((3, 1)))
            
            #Rotation
            R = self.dst_pcd_list[k].get_rotation_matrix_from_xyz((np.pi / 2, np.pi/2, 0))
            self.dst_pcd_list[k].rotate(R, center=(0, 0, 0))


    def callDitto(self):

        self.joint, self.pivot = Ditto_pipeline.Ditto(self.src_pcd_list, self.dst_pcd_list, self.model, self.generator, self.device)
        
        #horizontal stacking the arrays
        self.data_to_send.data = np.hstack((self.joint, self.pivot, 1))

        return self.data_to_send
    

    def receiveQR(self, data):
        self.pos_x = data.pos_x
        self.pos_y = data.pos_y
        self.pos_z = data.pos_z

        self.rot_x = data.rot_x
        self.rot_y = data.rot_y
        self.rot_z = data.rot_z
        self.rot_w = data.rot_w

    #Function to reset the manager 
    def reset(self):
        self.src_pcd_list = []
        self.src_pc_list = []
        self.dst_pcd_list = []

        self.scale = 0.
        self.center = 0.

    #Transform the results of Ditto back to world coordinates
    def transformBack(self):

        #Convert the pivot point
        pivot = self.data_to_send.data[3:6]
        vec = self.data_to_send.data[:3]

        scale = self.scale
        center = self.center

        quat, pivot_vec, sphere, ref_frame, dittoLine = Ditto_transformation.transformDitto(pivot, vec,scale,center, sphere = True, refframe = True)
        
        self.data_to_send.data[4:] = pivot_vec.reshape((3,))
        self.data_to_send.data[:4] = quat.reshape((4,))
        
        o3d.visualization.draw_geometries([self.visPcd, sphere, ref_frame, dittoLine])
        self.sendFlag = True
        
    #
    def new_position(self, req):
        #Function to modify the position and orientation of the arrow

        if self.sendFlag:
            print("Request: \n{}".format(req.input))
            print("--- Rotating the arrow ---")
            
            print("Axis position from Ditto = ", self.data_to_send)
            
            #X,y,z represent position of the directional vector and not a quaternion as previously intended
            
            #Transform back according to the QR code
            T = np.eye(4)
            T[0,3] = self.pos_x
            T[1,3] = self.pos_y
            T[2,3] = self.pos_z

            r = R.from_quat([self.rot_x, self.rot_y, self.rot_z, self.rot_w])
            T[:3,:3] = r.as_matrix()

            new_pos = np.ones((4,1))
            
            new_pos[0,0] = self.data_to_send.data[4]
            new_pos[1,0] = self.data_to_send.data[5]
            new_pos[2,0] = self.data_to_send.data[6]

            #new_pos = T @ new_postf
            ang = -np.pi/2
            rotx = np.array([[1,0,0], [0, np.cos(ang), -np.sin(ang)] ,[0, np.sin(ang), np.cos(ang)]])
            Tx = np.eye(4)
            Tx[:3, :3] = rotx #Rotation of the QR code
            

            new_pos = T @ Tx @ new_pos

            new_pos_2 = np.ones((4,1))
            new_pos_2[0,0] = self.data_to_send.data[0]
            new_pos_2[1,0] = self.data_to_send.data[1]
            new_pos_2[2,0] = self.data_to_send.data[2]

            T_2 = np.eye(4)
            T_2[:3,:3] = r.as_matrix()

            new_pos_2 =  T_2 @ Tx @ new_pos_2
            
            req.input.rot_x = new_pos_2[0,0]
            req.input.rot_y = new_pos_2[1,0]
            req.input.rot_z = -new_pos_2[2,0] #We need to negate this as last transformation
            req.input.rot_w = self.data_to_send.data[3]
            
            #req.input.rot_x = self.data_to_send.data[0]
            #req.input.rot_y = self.data_to_send.data[1]
            #req.input.rot_z = -self.data_to_send.data[2]
    
            

            

            #req.input.pos_x = self.data_to_send.data[4]
            #req.input.pos_y = self.data_to_send.data[5]
            #req.input.pos_z = self.data_to_send.data[6]

            req.input.pos_x = new_pos[0,0]
            req.input.pos_y = new_pos[1,0]
            req.input.pos_z = new_pos[2,0]


        return PositionServiceResponse(req.input)

def callback(data):

    field_names = [field.name for field in data.fields]
    is_rgb = 'rgb' in field_names

    cloud_array = ros_numpy.point_cloud2.pointcloud2_to_array(data).ravel()
    if is_rgb:
        cloud_npy = np.zeros(cloud_array.shape + (4,), dtype=np.float)
    else: 
        cloud_npy = np.zeros(cloud_array.shape + (3,), dtype=np.float)

    cloud_npy[...,0] = cloud_array['x']
    cloud_npy[...,1] = cloud_array['y']
    cloud_npy[...,2] = cloud_array['z']
    o3dpc = o3d.geometry.PointCloud()

    if len(np.shape(cloud_npy)) == 3:
        cloud_npy = np.reshape(cloud_npy[:, :, :3], [-1, 3], 'F')
    o3dpc.points = o3d.utility.Vector3dVector(cloud_npy[:, :3])

    if data.header.frame_id == "before":
        ditto.appendSRC(o3dpc)
    elif data.header.frame_id == "after":
        ditto.appendDST(o3dpc)

    elif data.header.frame_id == "end":
        #scale the pointclouds to call ditto with them
        ditto.scalePCD()
        ditto.transformPCDSRC()
        ditto.transformPCDDST()

        #Call Ditto
        data_to_send = ditto.callDitto()

        #Transform the pivot back
        ditto.transformBack()

        ditto.reset()


#Initialize DittoManager
ditto = DittoManager()

print("---Ditto initialized---")

rospy.init_node('listener', anonymous=True)

#Start the service to change the position of the axis from Ditto on the HoloLens
s = rospy.Service('pos_srv', PositionService, ditto.new_position)

#Subscriber to hear the data from hl2ss
rospy.Subscriber("point_cloud2", PointCloud2, callback)

rospy.Subscriber("pos_rot", PosRot, ditto.receiveQR)

rospy.spin()
