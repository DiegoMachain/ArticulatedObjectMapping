# Install script for directory: /home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap_msgs/msg" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs/msg/Octomap.msg"
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs/msg/OctomapWithPose.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap_msgs/srv" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs/srv/GetOctomap.srv"
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs/srv/BoundingBoxQuery.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap_msgs/cmake" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/octomap_msgs/catkin_generated/installspace/octomap_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/include/octomap_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/share/roseus/ros/octomap_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/share/common-lisp/ros/octomap_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/share/gennodejs/ros/octomap_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/lib/python2.7/dist-packages/octomap_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/devel/lib/python2.7/dist-packages/octomap_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/octomap_msgs/catkin_generated/installspace/octomap_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap_msgs/cmake" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/octomap_msgs/catkin_generated/installspace/octomap_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap_msgs/cmake" TYPE FILE FILES
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/octomap_msgs/catkin_generated/installspace/octomap_msgsConfig.cmake"
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/octomap_msgs/catkin_generated/installspace/octomap_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap_msgs" TYPE FILE FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/octomap_msgs/include/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

