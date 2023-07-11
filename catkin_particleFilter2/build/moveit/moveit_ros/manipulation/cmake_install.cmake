# Install script for directory: /home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/moveit/moveit_ros/manipulation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/moveit_ros_manipulation" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/include/moveit_ros_manipulation/PickPlaceDynamicReconfigureConfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_manipulation" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/lib/python2.7/dist-packages/moveit_ros_manipulation/__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/lib/python2.7/dist-packages/moveit_ros_manipulation/cfg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/moveit_ros_manipulation" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/lib/python2.7/dist-packages/moveit_ros_manipulation/cfg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/manipulation/catkin_generated/installspace/moveit_ros_manipulation.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_ros_manipulation/cmake" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/manipulation/catkin_generated/installspace/moveit_ros_manipulationConfig.cmake"
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/manipulation/catkin_generated/installspace/moveit_ros_manipulationConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_ros_manipulation" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/moveit/moveit_ros/manipulation/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_ros_manipulation" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/moveit/moveit_ros/manipulation/pick_place_capability_plugin_description.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/manipulation/pick_place/cmake_install.cmake")
  include("/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/manipulation/move_group_pick_place_capability/cmake_install.cmake")

endif()

