#from urdfpy import URDF
import urdfpy
import numpy as np
import os


def getCoordinateSystem(size):
    points = [[0, 0, 0], [size, 0, 0], [0, size, 0], [0, 0, size]]
    lines = [[0, 1], [0, 2], [0, 3]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    line_set = o3d.geometry.LineSet()
    line_set.points = o3d.utility.Vector3dVector(points)
    line_set.lines = o3d.utility.Vector2iVector(lines)
    line_set.colors = o3d.utility.Vector3dVector(colors)
    return line_set
def vector_to_rotation(vector):
    z = np.array(vector)
    z = z / np.linalg.norm(z)
    x = np.array([1, 0, 0])
    x = x - z*(x.dot(z)/z.dot(z))
    x = x / np.linalg.norm(x)
    y = np.cross(z, x)
    return np.c_[x, y, z]

def save_URDF(pivot_point_pred, joint_axis_pred, path):
    print("Path = ", os.path.join(path, 'URDF/Fixed/static.stl'))
    print(os.path.dirname(os.path.realpath(__file__)))
    path = os.path.dirname(os.path.realpath(__file__))
    robot = urdfpy.URDF.load(os.path.join(path, 'URDF/my_robot.urdf'))
    
    rotation_mat = vector_to_rotation(joint_axis_pred)
    
    #Rotation matrices
    ang = -np.pi/2
    yRot = np.array([[np.cos(ang), 0, np.sin(ang)], [0,1,0],[-np.sin(ang), 0, np.cos(ang)]])
    zRot = np.array([[np.cos(ang), -np.sin(ang), 0], [np.sin(ang), np.cos(ang), 0],[0, 0, 1]])
    
    T2 = np.eye(4)
    T2[:3,:3] = rotation_mat
    #T2[:3,3] = pivot_point_pred
    T3 = np.eye(4)
    T3[:3,:3] = yRot

    T4 = np.eye(4)
    T4[:3, 3] = pivot_point_pred
    
    Ttotal = T4 @ T2 @ T3

    pos = np.linalg.inv(Ttotal) @ (np.vstack((-pivot_point_pred.reshape((3,1)),1 ))) / 2
    
    for link in robot.links:
        if link.name == 'mobile':
            link.visuals[0].origin[:3,3] = pos[:-1].squeeze()
            #link.visuals[0].origin[:3,:3] = r3.as_matrix()
            link.visuals[0].origin[:3,:3] = np.linalg.inv(zRot @ rotation_mat) 
        elif link.name == 'static':
            link.visuals[0].origin[:3,3] = np.zeros((3,))

    for joint in robot.joints:
        if joint.name == 'static_to_mobile':
            joint.origin[:3, 3] = pivot_point_pred
            joint.origin[:3,:3] = zRot @ rotation_mat

    robot.save(os.path.join(path, 'URDF/my_robot_Ditto.urdf'))
