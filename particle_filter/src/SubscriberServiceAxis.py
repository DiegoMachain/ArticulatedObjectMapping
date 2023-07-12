from unity_robotics_demo_msgs.srv import PositionService, PositionServiceResponse
from robotics_demo. msg import PosRot
import rospy


class Manager():

    def __init__(self):


        self.pose = 0.
        self.flag = False

    def new_position(self, req):

        if self.flag:
            print(self.flag)
            req.input.rot_x = self.pose.rot_x
            req.input.rot_y = self.pose.rot_y
            req.input.rot_z = -self.pose.rot_z
            req.input.rot_w = self.pose.rot_w

            req.input.pos_x = self.pose.pos_x
            req.input.pos_y = self.pose.pos_y
            req.input.pos_z = self.pose.pos_z

        return PositionServiceResponse(req.input)


    def callback(self, dataSub):
        self.pose = dataSub
        self.flag = True

manager = Manager()

rospy.init_node('listener', anonymous = True)

s = rospy.Service('pos_srv', PositionService, manager.new_position)

rospy.Subscriber("pose_model_fit", PosRot, manager.callback)
rospy.spin()