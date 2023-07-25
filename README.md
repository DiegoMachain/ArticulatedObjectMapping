# Learning-based Articulated Object Mapping with the HoloLens

## Overview

This work uses Ditto: Building Digital Twins of Articulated Objects from Interaction to create a segmented mesh reconstruction of articulated objects, along with axis parameters for prismatic or rotational joints. Ditto needs two distinct inputs as point clouds from the object, where one input is at rest state and the other 
after interacting with the mobile part of the object. The scanning is performed using the HoloLens 2, joint axis result from Ditto can be seen in the HoloLens for a double check and correction. Finally, a URDF model of the object is saved.

## Installation (Ubuntu 18.04)
There are different packages that need to be installed.

1. Create a conda environment and install required packages.
```
conda env create -f conda_env_gpu.yaml -n Ditto
```
2. Install ROS melodic.
3. Create a catkin workspace and add the folders catkin_src, odio_urdf, particle_filter and articulation_model_msgs of this repository to the src folder of your catkin workspace.
4. Compile the catkin workspace using catkin_make.


The unity project is located in the QRCodeXRSDX folder, the following packages were used in this project:
1. hl2ss: follow the instructions in the hl2ss_test folder on this repository to correctly install it in Unity if necessary. This folder is also combined with Ditto.
2. Unity-Robotics-Hub: follow the instructions of the [Unity-Robotics-Hub](https://github.com/Unity-Technologies/Unity-Robotics-Hub/tree/main/tutorials/ros_unity_integration) to setup the ROS connection and to create the ROS messages.
3. QR tracking with HoloLens: the tutorial is [here](https://codeholo.com/2021/03/27/qrcode-tracking-with-hololens-2-xr-sdk-and-mrtk-v2-5/).


## Instructions
1. Follow these [instructions](https://github.com/DiegoMachain/ArticulatedObjectMapping/blob/main/hl2ss_test/instructions.md) from hl2ss to create the necessary calibration folders for the HoloLens camera.

2. Follow the [instructions](https://github.com/UT-Austin-RPL/Ditto/tree/master) from Ditto to download the pre-trained model and saved it into hl2ss_test/viewer/Data (You have to create the Data folder).
Also make sure you Build the ConvONets dependents.

The Unity application should look as follows:
![My Image](images/HoloLensApp.png)


### Running Ground Truth
The ground truth used is from the work “Active articulation model estimation through interactive perception”, where we follow the reading of a QR code placed on the 
mobile part of the object using the HoloLens. 
![My Image](images/QR_setup.png)

Follow these steps to visualize the joint axis from the Ground Truth:

1. Run the HoloLens application.
2. Press the Scan botton placed on the right of the HoloLens application panel.
3. Open a terminal on your server, source your terminal to the catkin workspace so it can work properly with ROS:
```
cd path_to_catkin_workspace
source devel/setup.bash
```
4. Activate the communication between the HoloLens and the server using ROS
```
roslaunch ros_tcp_endpoint endpoint.launch
```
5. Open another terminal and repeat point 3.
6. Move the directory to the catkin workspace.
7. Run the c++ executable that process the particle filter with:
```
./devel/lib/particle_filter/articulation_testing_node
```
8. Open another terminal and repeat point 3. This starts a service that is in charge of moving the joint axis based on the results of the particle filter.
9. Run the service script, which is a python script:
```
cd src/particle_filter/src/
python SubscriberServiceAxis.py
```
10. Start moving the screen while making sure that the HoloLens reads the QR code on the screen.
11. With this you have to see the joint axis move through the HoloLens.



### Running Ditto and human correction

1. Open a terminal on your server, source your terminal to the catkin workspace so it can work properly with ROS:
```
cd path_to_catkin_workspace
source devel/setup.bash
```
2. Open another two more terminals and source them too using the point 1.
3. Move the directory of the last two terminals to the following directory:
```
cd ..
cd hl2ss_test/viewer
```
4. Start the HoloLens application.
5. Start the script that builds the point clouds and controls the sequence from the server side:
```
python open3d_integrator_pv_ROS.py
```
6. Start Ditto:
```
python pcd_listener.py
```
7. Place the QR code on a flat surface and press the Scan button and read the QR code.
8. See the object of interest with the HoloLens, so the point cloud includes the object before we create the bounding box.
9. Press the "Start Bbox scan". A window on the server will appear.
10. Select corners of the object in the server side while holding the Shift key, it should look like this:
![My Image](images/Edges.png)
11. When you have selected all points, press Q to close the window and save the bounding box.
12. Press Stop Bbox scan.
13. Place the object in the rest state so we can start scanning.
14. Press Start First Interaction so you can record the point cloud before interaction, try to look at the object for some seconds.
15. Press Stop First Interaction.
16. Move the mobile part of the object so the second point cloud is different than the first one.
17. Press Start Second Interaction so you can record the point cloud after interaction, try to look at the object for some seconds.
18. Press Send to Ditto. The saved point clouds will be sent to Ditto to process.
19. Once Ditto process is finished, you can first visualize the results on windows on the server. You can close them pressing the key Q.
Once you closed all windows, the joint axis should move to the result from Ditto.
20. If you want to manipulate the joint axis, press the botton Move the Axis
21. Now you can move the axis with your fingers as follows:
![My Image](images/HoloLens.png)
22. Now a URDF model will be saved in hl2ss_test/viewer/URDF/my_robot_Ditto.urdf

You can obtain results of URDF models like the following:
![My Image](images/URDF.png)

## References

[1] Z. Jiang, C.-C. Hsu, and Y. Zhu, “Ditto: Building digital twins of articulated objects from interaction.” arXiv, 2022.

[2] K. Hausman, S. Niekum, S. Osentoski, and G. S. Sukhatme, “Active articulation model estimation through interactive perception,” in 2015 IEEE International Conference on Robotics and Automation (ICRA), 2015, pp. 3305–3312.