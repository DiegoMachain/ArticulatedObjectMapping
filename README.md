# Learning-based Articulated Object Mapping with the HoloLens

## Abstract

This work uses Ditto: Building Digital Twins of Articulated Objects from Interaction to create a segmented mesh reconstruction of articulated objects, along with axis parameters for prismatic or rotational joints. Ditto needs two distinct inputs as point clouds from the object, where one input is at rest state and the other 
after interacting with the mobile part of the object. The scanning is performed using the HoloLens 2, joint axis result from Ditto can be seen in the HoloLens for a double check and correction. Finally, a URDF model of the object is saved.

##Installation
There are different packages that need to be installed.

1. Install ROS melodic
2. Create a catkin workspace and add the content of the src folder of this repo into the src folder of your catkin workspace.
2. Install hl2ss, follow the instructions on the folder hl2ss_test on this repository to correctly install 