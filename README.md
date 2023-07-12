# Learning-based Articulated Object Mapping with the HoloLens

## Abstract

This work uses Ditto: Building Digital Twins of Articulated Objects from Interaction to create a segmented mesh reconstruction of articulated objects, along with axis parameters for prismatic or rotational joints. Ditto needs two distinct inputs as point clouds from the object, where one input is at rest state and the other 
after interacting with the mobile part of the object. The scanning is performed using the HoloLens 2, joint axis result from Ditto can be seen in the HoloLens for a double check and correction. Finally, a URDF model of the object is saved.

## Installation
There are different packages that need to be installed.

1. Install ROS melodic
2. Create a catkin workspace and add the content of the catkin_src folder of this repo into the src folder of your catkin workspace.
3. Compile the catkin workspace using catkin_make.
4. Install hl2ss, follow the instructions on the folder hl2ss_test on this repository to correctly install.
5. Follow the instructions of the [Unity-Robotics-Hub](https://github.com/Unity-Technologies/Unity-Robotics-Hub/tree/main/tutorials/ros_unity_integration) to setup the ROS connection and to create the ROS messages.
6. If the QR tracking stops working on the application for some reason, the tutorial to make it work with the HoloLens is [here] (https://codeholo.com/2021/03/27/qrcode-tracking-with-hololens-2-xr-sdk-and-mrtk-v2-5/)