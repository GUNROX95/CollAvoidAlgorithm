;; Auto-generated. Do not edit!


(when (boundp 'collvoid_msgs::PoseTwistWithCovariance)
  (if (not (find-package "COLLVOID_MSGS"))
    (make-package "COLLVOID_MSGS"))
  (shadow 'PoseTwistWithCovariance (find-package "COLLVOID_MSGS")))
(unless (find-package "COLLVOID_MSGS::POSETWISTWITHCOVARIANCE")
  (make-package "COLLVOID_MSGS::POSETWISTWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude PoseTwistWithCovariance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass collvoid_msgs::PoseTwistWithCovariance
  :super ros::object
  :slots (_header _robot_id _radius _holo_robot _controlled _holonomic_velocity _pose _twist _footprint ))

(defmethod collvoid_msgs::PoseTwistWithCovariance
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) "")
    ((:radius __radius) 0.0)
    ((:holo_robot __holo_robot) nil)
    ((:controlled __controlled) nil)
    ((:holonomic_velocity __holonomic_velocity) (instance geometry_msgs::Vector3 :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:twist __twist) (instance geometry_msgs::TwistWithCovariance :init))
    ((:footprint __footprint) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id (string __robot_id))
   (setq _radius (float __radius))
   (setq _holo_robot __holo_robot)
   (setq _controlled __controlled)
   (setq _holonomic_velocity __holonomic_velocity)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _footprint __footprint)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:holo_robot
   (&optional __holo_robot)
   (if __holo_robot (setq _holo_robot __holo_robot)) _holo_robot)
  (:controlled
   (&optional __controlled)
   (if __controlled (setq _controlled __controlled)) _controlled)
  (:holonomic_velocity
   (&rest __holonomic_velocity)
   (if (keywordp (car __holonomic_velocity))
       (send* _holonomic_velocity __holonomic_velocity)
     (progn
       (if __holonomic_velocity (setq _holonomic_velocity (car __holonomic_velocity)))
       _holonomic_velocity)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_id
    4 (length _robot_id)
    ;; float32 _radius
    4
    ;; bool _holo_robot
    1
    ;; bool _controlled
    1
    ;; geometry_msgs/Vector3 _holonomic_velocity
    (send _holonomic_velocity :serialization-length)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/PolygonStamped _footprint
    (send _footprint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _holo_robot
       (if _holo_robot (write-byte -1 s) (write-byte 0 s))
     ;; bool _controlled
       (if _controlled (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3 _holonomic_velocity
       (send _holonomic_velocity :serialize s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist
       (send _twist :serialize s)
     ;; geometry_msgs/PolygonStamped _footprint
       (send _footprint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _holo_robot
     (setq _holo_robot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _controlled
     (setq _controlled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _holonomic_velocity
     (send _holonomic_velocity :deserialize buf ptr-) (incf ptr- (send _holonomic_velocity :serialization-length))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/PolygonStamped _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
   ;;
   self)
  )

(setf (get collvoid_msgs::PoseTwistWithCovariance :md5sum-) "6a79eb6c33b8f61b28a446c70db3ab02")
(setf (get collvoid_msgs::PoseTwistWithCovariance :datatype-) "collvoid_msgs/PoseTwistWithCovariance")
(setf (get collvoid_msgs::PoseTwistWithCovariance :definition-)
      "Header header
string robot_id
float32 radius
bool holo_robot
bool controlled
geometry_msgs/Vector3 holonomic_velocity
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist
geometry_msgs/PolygonStamped footprint

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :collvoid_msgs/PoseTwistWithCovariance "6a79eb6c33b8f61b28a446c70db3ab02")


