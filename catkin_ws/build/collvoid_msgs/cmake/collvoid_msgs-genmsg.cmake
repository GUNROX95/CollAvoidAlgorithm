# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "collvoid_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Icollvoid_msgs:/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(collvoid_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" NAME_WE)
add_custom_target(_collvoid_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "collvoid_msgs" "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/TwistWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/PoseWithCovariance:geometry_msgs/Twist:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" NAME_WE)
add_custom_target(_collvoid_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "collvoid_msgs" "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" NAME_WE)
add_custom_target(_collvoid_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "collvoid_msgs" "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/TwistWithCovariance:collvoid_msgs/PoseTwistWithCovariance"
)

get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" NAME_WE)
add_custom_target(_collvoid_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "collvoid_msgs" "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/TwistWithCovariance"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_cpp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_cpp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_cpp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(collvoid_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(collvoid_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(collvoid_msgs_generate_messages collvoid_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_cpp _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_cpp _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_cpp _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_cpp _collvoid_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collvoid_msgs_gencpp)
add_dependencies(collvoid_msgs_gencpp collvoid_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collvoid_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_eus(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_eus(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_eus(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(collvoid_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(collvoid_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(collvoid_msgs_generate_messages collvoid_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_eus _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_eus _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_eus _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_eus _collvoid_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collvoid_msgs_geneus)
add_dependencies(collvoid_msgs_geneus collvoid_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collvoid_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_lisp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_lisp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_lisp(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(collvoid_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(collvoid_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(collvoid_msgs_generate_messages collvoid_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_lisp _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_lisp _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_lisp _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_lisp _collvoid_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collvoid_msgs_genlisp)
add_dependencies(collvoid_msgs_genlisp collvoid_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collvoid_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_nodejs(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_nodejs(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_nodejs(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(collvoid_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(collvoid_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(collvoid_msgs_generate_messages collvoid_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_nodejs _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_nodejs _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_nodejs _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_nodejs _collvoid_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collvoid_msgs_gennodejs)
add_dependencies(collvoid_msgs_gennodejs collvoid_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collvoid_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_py(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_py(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs
)
_generate_msg_py(collvoid_msgs
  "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(collvoid_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(collvoid_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(collvoid_msgs_generate_messages collvoid_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/collvoid_debug.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_py _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseArrayWeighted.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_py _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/AggregatedPoseTwist.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_py _collvoid_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/anton/catkin_ws/src/collvoid/collvoid_msgs/msg/PoseTwistWithCovariance.msg" NAME_WE)
add_dependencies(collvoid_msgs_generate_messages_py _collvoid_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collvoid_msgs_genpy)
add_dependencies(collvoid_msgs_genpy collvoid_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collvoid_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collvoid_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(collvoid_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(collvoid_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collvoid_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(collvoid_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(collvoid_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collvoid_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(collvoid_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(collvoid_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collvoid_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(collvoid_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(collvoid_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collvoid_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(collvoid_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(collvoid_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
