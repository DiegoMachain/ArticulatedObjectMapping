
#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Pose, Point, Quaternion
from articulation_model_msgs.msg import TrackMsg
from unity_robotics_demo_msgs.msg import PosRot
import numpy as np

class manager():
    def __init__(self):
        self.ite = 0
        self.ite_2 = 0
        self.PRISMATIC = 0
        self.ROTATIONAL = 1
        #self.id = ["a1", "b2", "c3", "a1"]
        self.id = ["a1", "b2"]
        self.iteCount = 0

#Detect all the poses and save them in an array and then check for lenghts, they should be the same
#then divide over three and split the dataset again 


def publisher():
    pub = rospy.Publisher('trajectory_pose', PosRot, queue_size=1)
    rospy.init_node('pose_publisher', anonymous=True)
    rate = rospy.Rate(2) # Hz
    #Count the number of QR codes
    qrCount = 0
    ID = []
    q = 0

    nSamples = 5 #Number of samples
    nDenom = 8

    #We need to save for general Idss
    while not rospy.is_shutdown():
        
        p = PosRot()
        # p.position.x = 2 + ((mana.ite)/10.0)
        # p.position.y = -0.1 + ((mana.ite)/10.0)
        # p.position.z = 4.0 + ((mana.ite)/10.0)
        # # Make sure the quaternion is valid and normalized

        #p.pos_x = 0.0
        #p.pos_y = 0.0
        #p.pos_z = 0.0

        p.rot_w = 1.0
        p.rot_x = 0.
        p.rot_y = 0.
        p.rot_z = 0.

        try:
            mana.id[mana.ite_2]
            Flag = True
        except:
            Flag = False
        if Flag:
            if mana.id[mana.ite_2] not in ID:
                ID.append(mana.id[mana.ite_2])
                #Create different poses for all the QR until we get a repeated one
                #p.rot_x = np.sin(mana.ite / nDenom) + np.random.normal(0., 0.01, 1)
                #p.rot_y = np.cos(mana.ite / nDenom) + np.random.normal(0., 0.01, 1)
                #p.rot_z = 0

                p.pos_x = 4 + np.cos(2 * mana.ite / nDenom) + np.random.normal(0., 0.01, 1)
                p.pos_y = 6 + np.sin(2 * mana.ite / nDenom) + np.random.normal(0., 0.01, 1)
                
                p.pos_z = 1
                p.id = str(mana.id[mana.ite_2])
                
                qrCount += 1 #count the number of qr codes
                mana.ite_2 += 1
                
        else:
            if mana.ite_2 % qrCount == 0:
                #print("Reset Ite 2")
                mana.ite_2 = 0 #Simulate the pose
                mana.ite += 1
                q = ((mana.ite)/nDenom)

            #p.rot_x = np.sin(np.abs(np.cos(2 * mana.iteCount / nDenom))) + np.random.normal(0., 0.01, 1)
            #p.rot_y = np.cos(np.abs(np.cos(2 * mana.iteCount / nDenom))) + np.random.normal(0., 0.01, 1)
            #p.rot_z = 0

            p.pos_x = 4 + np.cos(np.abs(np.cos(2 * mana.iteCount / nDenom))) + np.random.normal(0., 0.01, 1)
            p.pos_y = 6 + np.sin(np.abs(np.cos(2 * mana.iteCount / nDenom))) + np.random.normal(0., 0.01, 1)
            p.pos_z = 1
            
            p.id = str(mana.id[mana.ite_2])
        
            print("Ite 2 count = ", mana.ite_2)
            print("ID = ", mana.id[mana.ite_2])
            mana.ite_2 += 1

        

        #Append the elements
        print(p)

        mana.iteCount += 1

        pub.publish(p)
        rate.sleep()

        if mana.ite % (qrCount*nSamples) == 0:
            #Reset the parameters of the track
            mana.ite = 0

            #pub.publish(msg)
            



if __name__ == '__main__':
    mana = manager()
    try:
        publisher()
    except rospy:
        pass