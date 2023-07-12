# Vector of single kinematic model
#
# A kinematic model is defined by its model class name, and a set of parameters. 
# The client may additionally specify a model id, that can be used to colorize the
# model when visualized using the RVIZ model display.
# 
# For a list of currently implemented models, see the documetation at
# http://www.ros.org/wiki/articulation_models
#
#

std_msgs/Header header                        # frame and timestamp

articulation_model_msgs/ModelMsg[] particles  # model parameters

