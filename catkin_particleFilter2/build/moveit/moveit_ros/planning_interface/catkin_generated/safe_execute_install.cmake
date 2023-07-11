execute_process(COMMAND "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/planning_interface/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_ros/planning_interface/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
