;; Auto-generated. Do not edit!


(when (boundp 'collvoid_msgs::AggregatedPoseTwist)
  (if (not (find-package "COLLVOID_MSGS"))
    (make-package "COLLVOID_MSGS"))
  (shadow 'AggregatedPoseTwist (find-package "COLLVOID_MSGS")))
(unless (find-package "COLLVOID_MSGS::AGGREGATEDPOSETWIST")
  (make-package "COLLVOID_MSGS::AGGREGATEDPOSETWIST"))

(in-package "ROS")
;;//! \htmlinclude AggregatedPoseTwist.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass collvoid_msgs::AggregatedPoseTwist
  :super ros::object
  :slots (_header _posetwists ))

(defmethod collvoid_msgs::AggregatedPoseTwist
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:posetwists __posetwists) (let (r) (dotimes (i 0) (push (instance collvoid_msgs::PoseTwistWithCovariance :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _posetwists __posetwists)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:posetwists
   (&rest __posetwists)
   (if (keywordp (car __posetwists))
       (send* _posetwists __posetwists)
     (progn
       (if __posetwists (setq _posetwists (car __posetwists)))
       _posetwists)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; collvoid_msgs/PoseTwistWithCovariance[] _posetwists
    (apply #'+ (send-all _posetwists :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; collvoid_msgs/PoseTwistWithCovariance[] _posetwists
     (write-long (length _posetwists) s)
     (dolist (elem _posetwists)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; collvoid_msgs/PoseTwistWithCovariance[] _posetwists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posetwists (let (r) (dotimes (i n) (push (instance collvoid_msgs::PoseTwistWithCovariance :init) r)) r))
     (dolist (elem- _posetwists)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get collvoid_msgs::AggregatedPoseTwist :md5sum-) "b57a6e1f6dc93663d454cab62daa81a6")
(setf (get collvoid_msgs::AggregatedPoseTwist :datatype-) "collvoid_msgs/AggregatedPoseTwist")
(setf (get collvoid_msgs::AggregatedPoseTwist :definition-)
      "Header header
collvoid_msgs/PoseTwistWithCovariance[] posetwists
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
MSG: collvoid_msgs/PoseTwistWithCovariance
Header header
string robot_id
float32 radius
bool holo_robot
bool controlled
geometry_msgs/Vector3 holonomic_velocity
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist
geometry_msgs/PolygonStamped footprint

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



(provide :collvoid_msgs/AggregatedPoseTwist "b57a6e1f6dc93663d454cab62daa81a6")


