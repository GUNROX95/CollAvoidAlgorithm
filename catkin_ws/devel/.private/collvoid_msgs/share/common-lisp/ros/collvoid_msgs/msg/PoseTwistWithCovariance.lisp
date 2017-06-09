; Auto-generated. Do not edit!


(cl:in-package collvoid_msgs-msg)


;//! \htmlinclude PoseTwistWithCovariance.msg.html

(cl:defclass <PoseTwistWithCovariance> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (holo_robot
    :reader holo_robot
    :initarg :holo_robot
    :type cl:boolean
    :initform cl:nil)
   (controlled
    :reader controlled
    :initarg :controlled
    :type cl:boolean
    :initform cl:nil)
   (holonomic_velocity
    :reader holonomic_velocity
    :initarg :holonomic_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass PoseTwistWithCovariance (<PoseTwistWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseTwistWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseTwistWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name collvoid_msgs-msg:<PoseTwistWithCovariance> is deprecated: use collvoid_msgs-msg:PoseTwistWithCovariance instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:header-val is deprecated.  Use collvoid_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:robot_id-val is deprecated.  Use collvoid_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:radius-val is deprecated.  Use collvoid_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'holo_robot-val :lambda-list '(m))
(cl:defmethod holo_robot-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:holo_robot-val is deprecated.  Use collvoid_msgs-msg:holo_robot instead.")
  (holo_robot m))

(cl:ensure-generic-function 'controlled-val :lambda-list '(m))
(cl:defmethod controlled-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:controlled-val is deprecated.  Use collvoid_msgs-msg:controlled instead.")
  (controlled m))

(cl:ensure-generic-function 'holonomic_velocity-val :lambda-list '(m))
(cl:defmethod holonomic_velocity-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:holonomic_velocity-val is deprecated.  Use collvoid_msgs-msg:holonomic_velocity instead.")
  (holonomic_velocity m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:pose-val is deprecated.  Use collvoid_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:twist-val is deprecated.  Use collvoid_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <PoseTwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:footprint-val is deprecated.  Use collvoid_msgs-msg:footprint instead.")
  (footprint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseTwistWithCovariance>) ostream)
  "Serializes a message object of type '<PoseTwistWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'holo_robot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controlled) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holonomic_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseTwistWithCovariance>) istream)
  "Deserializes a message object of type '<PoseTwistWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'holo_robot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'controlled) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holonomic_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseTwistWithCovariance>)))
  "Returns string type for a message object of type '<PoseTwistWithCovariance>"
  "collvoid_msgs/PoseTwistWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseTwistWithCovariance)))
  "Returns string type for a message object of type 'PoseTwistWithCovariance"
  "collvoid_msgs/PoseTwistWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseTwistWithCovariance>)))
  "Returns md5sum for a message object of type '<PoseTwistWithCovariance>"
  "6a79eb6c33b8f61b28a446c70db3ab02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseTwistWithCovariance)))
  "Returns md5sum for a message object of type 'PoseTwistWithCovariance"
  "6a79eb6c33b8f61b28a446c70db3ab02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseTwistWithCovariance>)))
  "Returns full string definition for message of type '<PoseTwistWithCovariance>"
  (cl:format cl:nil "Header header~%string robot_id~%float32 radius~%bool holo_robot~%bool controlled~%geometry_msgs/Vector3 holonomic_velocity~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseTwistWithCovariance)))
  "Returns full string definition for message of type 'PoseTwistWithCovariance"
  (cl:format cl:nil "Header header~%string robot_id~%float32 radius~%bool holo_robot~%bool controlled~%geometry_msgs/Vector3 holonomic_velocity~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseTwistWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_id))
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holonomic_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseTwistWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseTwistWithCovariance
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':holo_robot (holo_robot msg))
    (cl:cons ':controlled (controlled msg))
    (cl:cons ':holonomic_velocity (holonomic_velocity msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':footprint (footprint msg))
))
