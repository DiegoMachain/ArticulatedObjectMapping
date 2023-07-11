# Install script for directory: /home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vboxuser/Desktop/Semester_Project/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/msg/JointControllerState.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/msg/JointTrajectoryControllerState.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/msg/Pr2GripperCommand.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/srv" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/srv/QueryCalibrationState.srv"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/srv/QueryTrajectoryState.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/action" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/action/JointTrajectory.action"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/action/PointHead.action"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/action/Pr2GripperCommand.action"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/action/SingleJointPosition.action"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryAction.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryActionGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryActionResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryActionFeedback.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadAction.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadActionGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadActionResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadActionFeedback.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/PointHeadFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandAction.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandActionGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandActionResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandActionFeedback.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionAction.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionActionGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionActionResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionActionFeedback.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionGoal.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionResult.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/cmake" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/include/pr2_controllers_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/roseus/ros/pr2_controllers_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/common-lisp/ros/pr2_controllers_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/share/gennodejs/ros/pr2_controllers_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/lib/python2.7/dist-packages/pr2_controllers_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/devel/lib/python2.7/dist-packages/pr2_controllers_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/cmake" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/cmake" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgsConfig.cmake"
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_controllers_msgs/package.xml")
endif()

