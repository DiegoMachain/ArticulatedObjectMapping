# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "articulation_model_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Iarticulation_model_msgs:/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/melodic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(articulation_model_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" NAME_WE)
add_custom_target(_articulation_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "articulation_model_msgs" "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" ""
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" NAME_WE)
add_custom_target(_articulation_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "articulation_model_msgs" "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" NAME_WE)
add_custom_target(_articulation_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "articulation_model_msgs" "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" "articulation_model_msgs/TrackMsg:sensor_msgs/ChannelFloat32:articulation_model_msgs/ParamMsg:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" NAME_WE)
add_custom_target(_articulation_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "articulation_model_msgs" "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" "sensor_msgs/ChannelFloat32:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" NAME_WE)
add_custom_target(_articulation_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "articulation_model_msgs" "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" "articulation_model_msgs/TrackMsg:sensor_msgs/ChannelFloat32:articulation_model_msgs/ParamMsg:geometry_msgs/Pose:articulation_model_msgs/ModelMsg:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_cpp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_cpp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_cpp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_cpp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(articulation_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(articulation_model_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(articulation_model_msgs_generate_messages articulation_model_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_cpp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_cpp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_cpp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_cpp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_cpp _articulation_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(articulation_model_msgs_gencpp)
add_dependencies(articulation_model_msgs_gencpp articulation_model_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS articulation_model_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_eus(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_eus(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_eus(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_eus(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(articulation_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(articulation_model_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(articulation_model_msgs_generate_messages articulation_model_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_eus _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_eus _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_eus _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_eus _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_eus _articulation_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(articulation_model_msgs_geneus)
add_dependencies(articulation_model_msgs_geneus articulation_model_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS articulation_model_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_lisp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_lisp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_lisp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_lisp(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(articulation_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(articulation_model_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(articulation_model_msgs_generate_messages articulation_model_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_lisp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_lisp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_lisp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_lisp _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_lisp _articulation_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(articulation_model_msgs_genlisp)
add_dependencies(articulation_model_msgs_genlisp articulation_model_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS articulation_model_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_nodejs(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_nodejs(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_nodejs(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_nodejs(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(articulation_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(articulation_model_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(articulation_model_msgs_generate_messages articulation_model_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_nodejs _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_nodejs _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_nodejs _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_nodejs _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_nodejs _articulation_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(articulation_model_msgs_gennodejs)
add_dependencies(articulation_model_msgs_gennodejs articulation_model_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS articulation_model_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_py(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_py(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_py(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
)
_generate_msg_py(articulation_model_msgs
  "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(articulation_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(articulation_model_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(articulation_model_msgs_generate_messages articulation_model_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParamMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_py _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ActionsMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_py _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ModelMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_py _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/TrackMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_py _articulation_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/articulation_model_msgs/msg/ParticlesMsg.msg" NAME_WE)
add_dependencies(articulation_model_msgs_generate_messages_py _articulation_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(articulation_model_msgs_genpy)
add_dependencies(articulation_model_msgs_genpy articulation_model_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS articulation_model_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/articulation_model_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(articulation_model_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(articulation_model_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(articulation_model_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(articulation_model_msgs_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/articulation_model_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(articulation_model_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(articulation_model_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(articulation_model_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(articulation_model_msgs_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/articulation_model_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(articulation_model_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(articulation_model_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(articulation_model_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(articulation_model_msgs_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/articulation_model_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(articulation_model_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(articulation_model_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(articulation_model_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(articulation_model_msgs_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/articulation_model_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(articulation_model_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(articulation_model_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(articulation_model_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(articulation_model_msgs_generate_messages_py visualization_msgs_generate_messages_py)
endif()
