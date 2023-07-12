
#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Pose, Point, Quaternion
from std_msgs.msg import String
from articulation_model_msgs.msg import TrackMsg
from unity_robotics_demo_msgs.msg import PosRot
import numpy as np
import matplotlib.pyplot as plt
import open3d as o3d

def getCoordinateSystem(size):
    points = [[0, 0, 0], [size, 0, 0], [0, size, 0], [0, 0, size]]
    lines = [[0, 1], [0, 2], [0, 3]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    line_set = o3d.geometry.LineSet()
    line_set.points = o3d.utility.Vector3dVector(points)
    line_set.lines = o3d.utility.Vector2iVector(lines)
    line_set.colors = o3d.utility.Vector3dVector(colors)
    return line_set

def get_quaternion_from_euler(roll, pitch, yaw):
  """
  Convert an Euler angle to a quaternion.
   
  Input
    :param roll: The roll (rotation around x-axis) angle in radians.
    :param pitch: The pitch (rotation around y-axis) angle in radians.
    :param yaw: The yaw (rotation around z-axis) angle in radians.
 
  Output
    :return qx, qy, qz, qw: The orientation in quaternion [x,y,z,w] format
  """
  qx = np.sin(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) - np.cos(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
  qy = np.cos(roll/2) * np.sin(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.cos(pitch/2) * np.sin(yaw/2)
  qz = np.cos(roll/2) * np.cos(pitch/2) * np.sin(yaw/2) - np.sin(roll/2) * np.sin(pitch/2) * np.cos(yaw/2)
  qw = np.cos(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
 
  return [qx, qy, qz, qw]

class manager():
    def __init__(self):
        self.ite = 0
        self.ite_2 = 0
        #self.id = ["a1", "b2", "c3", "a1"]
        self.id = ["a1"]
        self.ite_3 = 0
        self.x = []
        self.y = []
        self.z = []
        self.listVect = []
        self.nSamples = 12
        self.nDenom = 12
        self.vector = getCoordinateSystem(0.2)

#Detect all the poses and save them in an array and then check for lenghts, they should be the same
#then divide over three and split the dataset again 

    def callback(self, pose):
        print("Pose = ", pose)

def publisher():

    #We need to save for general Idss
    while not rospy.is_shutdown():
        
        p = PosRot()

        if mana.ite_3 >= len(mana.id):
            mana.ite_3 = 0
            mana.ite += 1
            
        #ang = np.abs(np.cos(2 * mana.ite / mana.nDenom)+ np.random.normal(0., 0.05, 1) )
        ang = mana.ite / mana.nDenom
        p.pos_x = 0.25 * np.cos(ang) + np.random.normal(0., 0.005, 1)
        p.pos_y = 0.25 * np.sin(ang) + np.random.normal(0., 0.005, 1)
        p.pos_z = 0.1 * mana.ite_3

        theta = np.abs(ang) + np.random.normal(0., 0.005, 1)
        qx, qy, qz, qw = get_quaternion_from_euler(-np.pi/2., 0, theta)
        #qx, qy, qz, qw = get_quaternion_from_euler(-np.pi/2., 0, theta)
        #qx, qy, qz, qw = get_quaternion_from_euler(0., 0., theta)
        
        p.rot_x = qx
        p.rot_y = qy 
        p.rot_z = qz
        p.rot_w = qw
        
        T = np.eye(4)
        R = mana.vector.get_rotation_matrix_from_quaternion((qw,qx,qy,qz))
        T[:3,:3] = R
        T[0,3] = p.pos_x
        T[1,3] = p.pos_y
        T[2,3] = p.pos_z

        mana.vector.transform(T)

        mana.listVect.append(np.asarray(mana.vector.points))

        mana.vector = getCoordinateSystem(0.2)

        mana.x.append(p.pos_x)
        mana.y.append(p.pos_y)
        mana.z.append(p.pos_z)

        #p.id = str(mana.id[mana.ite_3])
        p.id = str(mana.ite)
        mana.ite_3 += 1
        print(p)
        print("Iteration = ", mana.ite)
        pub.publish(p)
        rate.sleep()


        if (mana.ite) % (mana.nSamples) == 0:
            #Reset the parameters of the track
            mana.ite = 0

            fig = plt.figure(figsize=(12, 12))
            ax = fig.add_subplot(projection='3d')
            ax.scatter(mana.x, mana.y, mana.z)
            colors = 'rgb'
            for vect in mana.listVect: 
                for i in range(1,4):
                    ax.plot([vect[0,0], vect[i,0]], [vect[0,1], vect[i,1]],zs=[vect[0,2], vect[i, 2]], color = colors[i-1])
                
            ax.set_xlim([-0.5,1.5])
            ax.set_ylim([-0.5,1.5])
            ax.set_zlim([-0.5,1.5])

            ax.set_xlabel('$X$')
            ax.set_ylabel('$Y$')
            ax.set_zlabel('$Z$')
            plt.show()

            mana.listVect = []

            mana.x = []
            mana.y = []
            mana.z = []
            

if __name__ == '__main__':
    mana = manager()
    pub = rospy.Publisher('pos_rot', PosRot, queue_size=1, latch = True)
    rospy.init_node('pose_publisher', anonymous=True)
    rate = rospy.Rate(10) # Hz
    
    try:
        publisher()
    except rospy:
        pass