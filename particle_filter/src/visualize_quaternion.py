import numpy as np
import open3d as o3d
import copy
import rospy
from unity_robotics_demo_msgs.msg import PosRot
import matplotlib.pyplot as plt
from geometry_msgs.msg import Pose



#Function to draw the reference frame
def getCoordinateSystem(size):
    points = [[0, 0, 0], [size, 0, 0], [0, size, 0], [0, 0, size]]
    lines = [[0, 1], [0, 2], [0, 3]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    line_set = o3d.geometry.LineSet()
    line_set.points = o3d.utility.Vector3dVector(points)
    line_set.lines = o3d.utility.Vector2iVector(lines)
    line_set.colors = o3d.utility.Vector3dVector(colors)
    return line_set

#mesh = o3d.geometry.TriangleMesh.create_coordinate_frame()
#reference = getCoordinateSystem(1)
#reference.translate((1, 0, 0))

#One QR code
#R = mesh.get_rotation_matrix_from_quaternion((0, 0.819311,-0.57335, 0))
#R = mesh.get_rotation_matrix_from_quaternion((0.469, 0.,0., 0.469))

#Two QR codes
#R = mesh.get_rotation_matrix_from_quaternion((-0.333164, 0.664547, -0.505561, -0.333164))
#Three QR codes
#R = mesh.get_rotation_matrix_from_quaternion((-0.60047, -0.701047, -0.127161, -0.60047))

#mesh.rotate(R, center=(0, 0, 0))

#o3d.visualization.draw_geometries([mesh, reference])

def getCoordinateSystem(size):
    points = [[0, 0, 0], [size, 0, 0], [0, size, 0], [0, 0, size]]
    lines = [[0, 1], [0, 2], [0, 3]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    line_set = o3d.geometry.LineSet()
    line_set.points = o3d.utility.Vector3dVector(points)
    line_set.lines = o3d.utility.Vector2iVector(lines)
    line_set.colors = o3d.utility.Vector3dVector(colors)
    return line_set

def Hol2Right(rot_x, rot_y, rot_z, rot_w):
    return -rot_w, -rot_x, rot_y, rot_z

class manager():
    def __init__(self):
        self.vector = getCoordinateSystem(0.2)
        self.x = []
        self.y = []
        self.z = []
        self.count =0
        self.listVect = []
        self.flag = False
        self.numSamples = 12
        self.rotInit = np.array([[0,1,0],[0,0,1],[1,0,0]])
    def callback(self, pose):
        print("Model result = ", pose)
        self.p = pose
        self.flag = True

def callback(p):
    T = np.eye(4)
    R = mana.vector.get_rotation_matrix_from_quaternion((p.rot_w,p.rot_x,p.rot_y,p.rot_z))
    T[:3, :3] = R
    T[0,3] = p.pos_x
    T[1,3] = p.pos_y
    T[2,3] = p.pos_z
    mana.vector.transform(T)
    if mana.count < mana.numSamples:
        mana.listVect.append(np.asarray(mana.vector.points))
        mana.x.append(p.pos_x)
        mana.y.append(p.pos_y)
        mana.z.append(p.pos_z)
    mana.vector = getCoordinateSystem(0.2)

    mana.count +=1
    #print(p)
    if (mana.flag):
        TVect = np.eye(4)
        zVect = getCoordinateSystem(1)
        #rot_w, rot_x, rot_y, rot_z = Hol2Right( mana.p.rot_x, mana.p.rot_y, mana.p.rot_z, mana.p.rot_w)
        RVect = mana.vector.get_rotation_matrix_from_quaternion((mana.p.rot_w, mana.p.rot_x, mana.p.rot_y, mana.p.rot_z))
        TVect[:3,:3] = RVect
        TVect[0,3] = mana.p.pos_x
        TVect[1,3] = mana.p.pos_y
        TVect[2,3] = mana.p.pos_z

        TVect_2 = np.eye(4)
        TVect_2[:3,:3] = mana.rotInit

        #zVect = zVect.transform(TVect_2)

        zVect = zVect.transform(TVect)
        zVect = np.asarray(zVect.points)

        mana.count = 0
        fig = plt.figure(figsize=(12, 12))
        ax = fig.add_subplot(projection='3d')
        ax.scatter(mana.x, mana.y, mana.z)
        colors = 'rgb'

        print('zVect =', zVect)
        for vect in mana.listVect: 
            for i in range(1,4):
                ax.plot([vect[0,0], vect[i,0]], [vect[0,1], vect[i,1]],zs=[vect[0,2], vect[i, 2]], color = colors[i-1])
            
        ax.plot([zVect[0,0], zVect[-1,0]], [zVect[0,1], zVect[-1,1]],zs=[zVect[0,2], zVect[-1, 2]], color = 'b')
        #ax.plot([zVect[0,0], zVect[1,0]], [zVect[0,1], zVect[1,1]],zs=[zVect[0,2], zVect[1, 2]], color = 'b')
        
        ax.set_xlim([-0.5,1.5])
        ax.set_ylim([-0.5,1.5])
        ax.set_zlim([-0.5,1.5])

        ax.set_xlabel('$X$')
        ax.set_ylabel('$Y$')
        ax.set_zlabel('$Z$')
        plt.show()

        mana.flag = False
        mana.listVect = []
        mana.x = []
        mana.y = []
        mana.z = []
        mana.count = 0

if __name__ == '__main__':
    mana = manager()
    rospy.init_node('pose_vis', anonymous=True)
    rospy.Subscriber("pos_rot", PosRot, callback)
    rospy.Subscriber("pose_model_fit", PosRot, mana.callback)

    rospy.spin()



