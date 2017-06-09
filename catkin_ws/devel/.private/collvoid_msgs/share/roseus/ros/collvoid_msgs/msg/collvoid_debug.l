;; Auto-generated. Do not edit!


(when (boundp 'collvoid_msgs::collvoid_debug)
  (if (not (find-package "COLLVOID_MSGS"))
    (make-package "COLLVOID_MSGS"))
  (shadow 'collvoid_debug (find-package "COLLVOID_MSGS")))
(unless (find-package "COLLVOID_MSGS::COLLVOID_DEBUG")
  (make-package "COLLVOID_MSGS::COLLVOID_DEBUG"))

(in-package "ROS")
;;//! \htmlinclude collvoid_debug.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass collvoid_msgs::collvoid_debug
  :super ros::object
  :slots (_header _run _cmd_vel _holo_vel _odom _ground_truth _located_pose _loc_error _radius_uncertainty ))

(defmethod collvoid_msgs::collvoid_debug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:run __run) 0)
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Twist :init))
    ((:holo_vel __holo_vel) (instance geometry_msgs::Vector3Stamped :init))
    ((:odom __odom) (instance nav_msgs::Odometry :init))
    ((:ground_truth __ground_truth) (instance nav_msgs::Odometry :init))
    ((:located_pose __located_pose) (instance geometry_msgs::PoseStamped :init))
    ((:loc_error __loc_error) 0.0)
    ((:radius_uncertainty __radius_uncertainty) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _run (round __run))
   (setq _cmd_vel __cmd_vel)
   (setq _holo_vel __holo_vel)
   (setq _odom __odom)
   (setq _ground_truth __ground_truth)
   (setq _located_pose __located_pose)
   (setq _loc_error (float __loc_error))
   (setq _radius_uncertainty (float __radius_uncertainty))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:run
   (&optional __run)
   (if __run (setq _run __run)) _run)
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:holo_vel
   (&rest __holo_vel)
   (if (keywordp (car __holo_vel))
       (send* _holo_vel __holo_vel)
     (progn
       (if __holo_vel (setq _holo_vel (car __holo_vel)))
       _holo_vel)))
  (:odom
   (&rest __odom)
   (if (keywordp (car __odom))
       (send* _odom __odom)
     (progn
       (if __odom (setq _odom (car __odom)))
       _odom)))
  (:ground_truth
   (&rest __ground_truth)
   (if (keywordp (car __ground_truth))
       (send* _ground_truth __ground_truth)
     (progn
       (if __ground_truth (setq _ground_truth (car __ground_truth)))
       _ground_truth)))
  (:located_pose
   (&rest __located_pose)
   (if (keywordp (car __located_pose))
       (send* _located_pose __located_pose)
     (progn
       (if __located_pose (setq _located_pose (car __located_pose)))
       _located_pose)))
  (:loc_error
   (&optional __loc_error)
   (if __loc_error (setq _loc_error __loc_error)) _loc_error)
  (:radius_uncertainty
   (&optional __radius_uncertainty)
   (if __radius_uncertainty (setq _radius_uncertainty __radius_uncertainty)) _radius_uncertainty)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _run
    4
    ;; geometry_msgs/Twist _cmd_vel
    (send _cmd_vel :serialization-length)
    ;; geometry_msgs/Vector3Stamped _holo_vel
    (send _holo_vel :serialization-length)
    ;; nav_msgs/Odometry _odom
    (send _odom :serialization-length)
    ;; nav_msgs/Odometry _ground_truth
    (send _ground_truth :serialization-length)
    ;; geometry_msgs/PoseStamped _located_pose
    (send _located_pose :serialization-length)
    ;; float32 _loc_error
    4
    ;; float32 _radius_uncertainty
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _run
       (write-long _run s)
     ;; geometry_msgs/Twist _cmd_vel
       (send _cmd_vel :serialize s)
     ;; geometry_msgs/Vector3Stamped _holo_vel
       (send _holo_vel :serialize s)
     ;; nav_msgs/Odometry _odom
       (send _odom :serialize s)
     ;; nav_msgs/Odometry _ground_truth
       (send _ground_truth :serialize s)
     ;; geometry_msgs/PoseStamped _located_pose
       (send _located_pose :serialize s)
     ;; float32 _loc_error
       (sys::poke _loc_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius_uncertainty
       (sys::poke _radius_uncertainty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _run
     (setq _run (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Twist _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;; geometry_msgs/Vector3Stamped _holo_vel
     (send _holo_vel :deserialize buf ptr-) (incf ptr- (send _holo_vel :serialization-length))
   ;; nav_msgs/Odometry _odom
     (send _odom :deserialize buf ptr-) (incf ptr- (send _odom :serialization-length))
   ;; nav_msgs/Odometry _ground_truth
     (send _ground_truth :deserialize buf ptr-) (incf ptr- (send _ground_truth :serialization-length))
   ;; geometry_msgs/PoseStamped _located_pose
     (send _located_pose :deserialize buf ptr-) (incf ptr- (send _located_pose :serialization-length))
   ;; float32 _loc_error
     (setq _loc_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius_uncertainty
     (setq _radius_uncertainty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get collvoid_msgs::collvoid_debug :md5sum-) "a304cee99f1657d40961f7cc6bca76f7")
(setf (get collvoid_msgs::collvoid_debug :datatype-) "collvoid_msgs/collvoid_debug")
(setf (get collvoid_msgs::collvoid_debug :definition-)
      "Header header
int32 run
geometry_msgs/Twist cmd_vel
geometry_msgs/Vector3Stamped holo_vel
nav_msgs/Odometry odom
nav_msgs/Odometry ground_truth
geometry_msgs/PoseStamped located_pose
float32 loc_error
float32 radius_uncertainty
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

")



(provide :collvoid_msgs/collvoid_debug "a304cee99f1657d40961f7cc6bca76f7")


