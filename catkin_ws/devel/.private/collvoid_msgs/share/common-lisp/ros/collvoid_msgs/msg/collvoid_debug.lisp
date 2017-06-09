; Auto-generated. Do not edit!


(cl:in-package collvoid_msgs-msg)


;//! \htmlinclude collvoid_debug.msg.html

(cl:defclass <collvoid_debug> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (run
    :reader run
    :initarg :run
    :type cl:integer
    :initform 0)
   (cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (holo_vel
    :reader holo_vel
    :initarg :holo_vel
    :type geometry_msgs-msg:Vector3Stamped
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3Stamped))
   (odom
    :reader odom
    :initarg :odom
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (ground_truth
    :reader ground_truth
    :initarg :ground_truth
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (located_pose
    :reader located_pose
    :initarg :located_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (loc_error
    :reader loc_error
    :initarg :loc_error
    :type cl:float
    :initform 0.0)
   (radius_uncertainty
    :reader radius_uncertainty
    :initarg :radius_uncertainty
    :type cl:float
    :initform 0.0))
)

(cl:defclass collvoid_debug (<collvoid_debug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <collvoid_debug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'collvoid_debug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name collvoid_msgs-msg:<collvoid_debug> is deprecated: use collvoid_msgs-msg:collvoid_debug instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:header-val is deprecated.  Use collvoid_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'run-val :lambda-list '(m))
(cl:defmethod run-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:run-val is deprecated.  Use collvoid_msgs-msg:run instead.")
  (run m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:cmd_vel-val is deprecated.  Use collvoid_msgs-msg:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'holo_vel-val :lambda-list '(m))
(cl:defmethod holo_vel-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:holo_vel-val is deprecated.  Use collvoid_msgs-msg:holo_vel instead.")
  (holo_vel m))

(cl:ensure-generic-function 'odom-val :lambda-list '(m))
(cl:defmethod odom-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:odom-val is deprecated.  Use collvoid_msgs-msg:odom instead.")
  (odom m))

(cl:ensure-generic-function 'ground_truth-val :lambda-list '(m))
(cl:defmethod ground_truth-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:ground_truth-val is deprecated.  Use collvoid_msgs-msg:ground_truth instead.")
  (ground_truth m))

(cl:ensure-generic-function 'located_pose-val :lambda-list '(m))
(cl:defmethod located_pose-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:located_pose-val is deprecated.  Use collvoid_msgs-msg:located_pose instead.")
  (located_pose m))

(cl:ensure-generic-function 'loc_error-val :lambda-list '(m))
(cl:defmethod loc_error-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:loc_error-val is deprecated.  Use collvoid_msgs-msg:loc_error instead.")
  (loc_error m))

(cl:ensure-generic-function 'radius_uncertainty-val :lambda-list '(m))
(cl:defmethod radius_uncertainty-val ((m <collvoid_debug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:radius_uncertainty-val is deprecated.  Use collvoid_msgs-msg:radius_uncertainty instead.")
  (radius_uncertainty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <collvoid_debug>) ostream)
  "Serializes a message object of type '<collvoid_debug>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'run)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holo_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ground_truth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'located_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'loc_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius_uncertainty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <collvoid_debug>) istream)
  "Deserializes a message object of type '<collvoid_debug>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'run) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holo_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ground_truth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'located_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius_uncertainty) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<collvoid_debug>)))
  "Returns string type for a message object of type '<collvoid_debug>"
  "collvoid_msgs/collvoid_debug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'collvoid_debug)))
  "Returns string type for a message object of type 'collvoid_debug"
  "collvoid_msgs/collvoid_debug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<collvoid_debug>)))
  "Returns md5sum for a message object of type '<collvoid_debug>"
  "a304cee99f1657d40961f7cc6bca76f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'collvoid_debug)))
  "Returns md5sum for a message object of type 'collvoid_debug"
  "a304cee99f1657d40961f7cc6bca76f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<collvoid_debug>)))
  "Returns full string definition for message of type '<collvoid_debug>"
  (cl:format cl:nil "Header header~%int32 run~%geometry_msgs/Twist cmd_vel~%geometry_msgs/Vector3Stamped holo_vel~%nav_msgs/Odometry odom~%nav_msgs/Odometry ground_truth~%geometry_msgs/PoseStamped located_pose~%float32 loc_error~%float32 radius_uncertainty~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'collvoid_debug)))
  "Returns full string definition for message of type 'collvoid_debug"
  (cl:format cl:nil "Header header~%int32 run~%geometry_msgs/Twist cmd_vel~%geometry_msgs/Vector3Stamped holo_vel~%nav_msgs/Odometry odom~%nav_msgs/Odometry ground_truth~%geometry_msgs/PoseStamped located_pose~%float32 loc_error~%float32 radius_uncertainty~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <collvoid_debug>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holo_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ground_truth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'located_pose))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <collvoid_debug>))
  "Converts a ROS message object to a list"
  (cl:list 'collvoid_debug
    (cl:cons ':header (header msg))
    (cl:cons ':run (run msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':holo_vel (holo_vel msg))
    (cl:cons ':odom (odom msg))
    (cl:cons ':ground_truth (ground_truth msg))
    (cl:cons ':located_pose (located_pose msg))
    (cl:cons ':loc_error (loc_error msg))
    (cl:cons ':radius_uncertainty (radius_uncertainty msg))
))
