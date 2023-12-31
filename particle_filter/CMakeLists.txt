cmake_minimum_required(VERSION 2.8.3)
project(particle_filter)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x") 

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
##find_package(catkin REQUIRED COMPONENTS roscpp std_msgs visualization_msgs articulation_model_msgs pr2_lfd_utils moveit_core moveit_ros_planning_interface simple_robot_control tf)
find_package(catkin REQUIRED COMPONENTS roscpp std_msgs articulation_model_msgs tf)

find_package(Eigen3 REQUIRED)
#find_package(PkgConfig REQUIRED)

find_library(GSL_LIBRARY NAMES gsl
          HINTS ${GSL_LIBRARIES} ${GSL_LIBRARY_DIRS})

find_library(GSLCBLAS_LIBRARY NAMES gslcblas
          HINTS ${GSL_LIBRARIES} ${GSL_LIBRARY_DIRS})


#set( CMAKE_VERBOSE_MAKEFILE on )
## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)



## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend and a run_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependencies might have been
##     pulled in transitively but can be declared for certainty nonetheless:
##     * add a build_depend tag for "message_generation"
##     * add a run_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message1.msg
#   Message2.msg
# )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
# generate_messages(
#   DEPENDENCIES
#   std_msgs  # Or other packages containing msgs
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  INCLUDE_DIRS include
#  LIBRARIES particle_filter
#  CATKIN_DEPENDS other_catkin_pkg
  DEPENDS EIGEN3
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen3_INCLUDE_DIRS}
  ${GSL_INCLUDE_DIRS}
  ${GSLCBLAS_INCLUDE_DIRS}
)

## Declare a cpp library
# add_library(particle_filter
#   src/${PROJECT_NAME}/particle_filter.cpp
# )

## Declare a cpp executable
#add_executable(particle_filter_node src/main.cpp src/particle.cpp src/particle_filter.cpp src/motion_model.cpp src/sensor_model.cpp src/random.cpp src/identity_motionmodel.cpp src/visualizer.cpp src/gaussian_sensormodel.cpp src/free_model.cpp src/articulation_model.cpp src/rigid_model.cpp src/rotational_model.cpp src/prismatic_model.cpp src/articulation_marker_sensormodel.cpp src/articulation_data_sensormodel.cpp src/sensor_action_model.cpp src/articulation_manip_sensor_action_model.cpp src/articulation_manip_pose_sensoractionmodel.cpp src/handle_finder.cpp src/action.cpp src/action_generator.cpp)

#add_executable(particle_filter_node src/main.cpp src/particle.cpp src/particle_filter.cpp src/motion_model.cpp src/sensor_model.cpp src/random.cpp src/identity_motionmodel.cpp src/visualizer.cpp src/gaussian_sensormodel.cpp src/free_model.cpp src/articulation_model.cpp src/rigid_model.cpp src/rotational_model.cpp src/prismatic_model.cpp)

#add_executable(articulation_particles src/main_articulation.cpp src/particle.cpp src/particle_filter.cpp src/motion_model.cpp src/sensor_model.cpp src/random.cpp src/identity_motionmodel.cpp src/visualizer.cpp src/gaussian_sensormodel.cpp src/free_model.cpp src/articulation_model.cpp src/rigid_model.cpp src/rotational_model.cpp src/prismatic_model.cpp src/articulation_marker_sensormodel.cpp src/articulation_data_sensormodel.cpp src/sensor_action_model.cpp src/articulation_manip_sensor_action_model.cpp src/articulation_manip_pose_sensoractionmodel.cpp src/handle_finder.cpp src/action.cpp src/action_generator.cpp)

#add_executable(main_static src/main_static.cpp src/particle.cpp src/particle_filter.cpp src/motion_model.cpp src/sensor_model.cpp src/random.cpp src/identity_motionmodel.cpp src/visualizer.cpp src/gaussian_sensormodel.cpp src/free_model.cpp src/articulation_model.cpp src/rigid_model.cpp src/rotational_model.cpp src/prismatic_model.cpp src/articulation_marker_sensormodel.cpp src/articulation_data_sensormodel.cpp src/sensor_action_model.cpp src/articulation_manip_sensor_action_model.cpp src/articulation_manip_pose_sensoractionmodel.cpp src/handle_finder.cpp src/action.cpp src/action_generator.cpp)

add_executable(articulation_testing_node src/model_test.cpp src/free_model.cpp src/articulation_model.cpp src/rigid_model.cpp src/rotational_model.cpp src/prismatic_model.cpp)

#add_dependencies(particle_filter_node articulation_model_msgs_generate_messages_cpp)
#add_dependencies(articulation_particles articulation_model_msgs_generate_messages_cpp)
add_dependencies(articulation_testing_node articulation_model_msgs_generate_messages_cpp)
#add_dependencies(main_static articulation_model_msgs_generate_messages_cpp)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
# add_dependencies(particle_filter_node particle_filter_generate_messages_cpp)


## Specify libraries to link a library or executable target against
#target_link_libraries(particle_filter_node
#   ${catkin_LIBRARIES}
#   ${GSL_LIBRARY}
#   ${GSLCBLAS_LIBRARY}
#)

#target_link_libraries(articulation_particles
#   ${catkin_LIBRARIES}
#   ${GSL_LIBRARY}
#   ${GSLCBLAS_LIBRARY}
#)

target_link_libraries(articulation_testing_node
   ${catkin_LIBRARIES}
   ${GSL_LIBRARY}
   ${GSLCBLAS_LIBRARY}
)

#target_link_libraries(main_static
#   ${catkin_LIBRARIES}
#   ${GSL_LIBRARY}
#   ${GSLCBLAS_LIBRARY}
#)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS particle_filter particle_filter_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_particle_filter.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
