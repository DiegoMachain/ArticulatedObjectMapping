# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotics_demo: 3 messages, 2 services")

set(MSG_I_FLAGS "-Irobotics_demo:/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotics_demo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" NAME_WE)
add_custom_target(_robotics_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_demo" "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" ""
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" NAME_WE)
add_custom_target(_robotics_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_demo" "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" ""
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" NAME_WE)
add_custom_target(_robotics_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_demo" "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" "robotics_demo/PosRot"
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" NAME_WE)
add_custom_target(_robotics_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_demo" "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" NAME_WE)
add_custom_target(_robotics_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics_demo" "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
)
_generate_msg_cpp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
)
_generate_msg_cpp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
)

### Generating Services
_generate_srv_cpp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
)
_generate_srv_cpp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
)

### Generating Module File
_generate_module_cpp(robotics_demo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotics_demo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotics_demo_generate_messages robotics_demo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_cpp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_cpp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_cpp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_cpp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_cpp _robotics_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_demo_gencpp)
add_dependencies(robotics_demo_gencpp robotics_demo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_demo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
)
_generate_msg_eus(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
)
_generate_msg_eus(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
)

### Generating Services
_generate_srv_eus(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
)
_generate_srv_eus(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
)

### Generating Module File
_generate_module_eus(robotics_demo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotics_demo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotics_demo_generate_messages robotics_demo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_eus _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_eus _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_eus _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_eus _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_eus _robotics_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_demo_geneus)
add_dependencies(robotics_demo_geneus robotics_demo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_demo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
)
_generate_msg_lisp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
)
_generate_msg_lisp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
)

### Generating Services
_generate_srv_lisp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
)
_generate_srv_lisp(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
)

### Generating Module File
_generate_module_lisp(robotics_demo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotics_demo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotics_demo_generate_messages robotics_demo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_lisp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_lisp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_lisp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_lisp _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_lisp _robotics_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_demo_genlisp)
add_dependencies(robotics_demo_genlisp robotics_demo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_demo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
)
_generate_msg_nodejs(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
)
_generate_msg_nodejs(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
)

### Generating Services
_generate_srv_nodejs(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
)
_generate_srv_nodejs(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
)

### Generating Module File
_generate_module_nodejs(robotics_demo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotics_demo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotics_demo_generate_messages robotics_demo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_nodejs _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_nodejs _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_nodejs _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_nodejs _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_nodejs _robotics_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_demo_gennodejs)
add_dependencies(robotics_demo_gennodejs robotics_demo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_demo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
)
_generate_msg_py(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
)
_generate_msg_py(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
)

### Generating Services
_generate_srv_py(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
)
_generate_srv_py(robotics_demo
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
)

### Generating Module File
_generate_module_py(robotics_demo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotics_demo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotics_demo_generate_messages robotics_demo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/State.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_py _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/UnityColor.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_py _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/PositionService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_py _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/srv/ObjectPoseService.srv" NAME_WE)
add_dependencies(robotics_demo_generate_messages_py _robotics_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/robotics_demo/msg/PosRot.msg" NAME_WE)
add_dependencies(robotics_demo_generate_messages_py _robotics_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_demo_genpy)
add_dependencies(robotics_demo_genpy robotics_demo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_demo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics_demo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robotics_demo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotics_demo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics_demo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robotics_demo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotics_demo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics_demo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robotics_demo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotics_demo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics_demo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robotics_demo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotics_demo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics_demo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robotics_demo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotics_demo_generate_messages_py std_msgs_generate_messages_py)
endif()
