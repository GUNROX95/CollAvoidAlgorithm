; Auto-generated. Do not edit!


(cl:in-package collvoid_msgs-msg)


;//! \htmlinclude AggregatedPoseTwist.msg.html

(cl:defclass <AggregatedPoseTwist> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (posetwists
    :reader posetwists
    :initarg :posetwists
    :type (cl:vector collvoid_msgs-msg:PoseTwistWithCovariance)
   :initform (cl:make-array 0 :element-type 'collvoid_msgs-msg:PoseTwistWithCovariance :initial-element (cl:make-instance 'collvoid_msgs-msg:PoseTwistWithCovariance))))
)

(cl:defclass AggregatedPoseTwist (<AggregatedPoseTwist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AggregatedPoseTwist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AggregatedPoseTwist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name collvoid_msgs-msg:<AggregatedPoseTwist> is deprecated: use collvoid_msgs-msg:AggregatedPoseTwist instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AggregatedPoseTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:header-val is deprecated.  Use collvoid_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'posetwists-val :lambda-list '(m))
(cl:defmethod posetwists-val ((m <AggregatedPoseTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader collvoid_msgs-msg:posetwists-val is deprecated.  Use collvoid_msgs-msg:posetwists instead.")
  (posetwists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AggregatedPoseTwist>) ostream)
  "Serializes a message object of type '<AggregatedPoseTwist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'posetwists))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'posetwists))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AggregatedPoseTwist>) istream)
  "Deserializes a message object of type '<AggregatedPoseTwist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'posetwists) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'posetwists)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'collvoid_msgs-msg:PoseTwistWithCovariance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AggregatedPoseTwist>)))
  "Returns string type for a message object of type '<AggregatedPoseTwist>"
  "collvoid_msgs/AggregatedPoseTwist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AggregatedPoseTwist)))
  "Returns string type for a message object of type 'AggregatedPoseTwist"
  "collvoid_msgs/AggregatedPoseTwist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AggregatedPoseTwist>)))
  "Returns md5sum for a message object of type '<AggregatedPoseTwist>"
  "b57a6e1f6dc93663d454cab62daa81a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AggregatedPoseTwist)))
  "Returns md5sum for a message object of type 'AggregatedPoseTwist"
  "b57a6e1f6dc93663d454cab62daa81a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AggregatedPoseTwist>)))
  "Returns full string definition for message of type '<AggregatedPoseTwist>"
  (cl:format cl:nil "Header header~%collvoid_msgs/PoseTwistWithCovariance[] posetwists~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: collvoid_msgs/PoseTwistWithCovariance~%Header header~%string robot_id~%float32 radius~%bool holo_robot~%bool controlled~%geometry_msgs/Vector3 holonomic_velocity~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AggregatedPoseTwist)))
  "Returns full string definition for message of type 'AggregatedPoseTwist"
  (cl:format cl:nil "Header header~%collvoid_msgs/PoseTwistWithCovariance[] posetwists~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: collvoid_msgs/PoseTwistWithCovariance~%Header header~%string robot_id~%float32 radius~%bool holo_robot~%bool controlled~%geometry_msgs/Vector3 holonomic_velocity~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AggregatedPoseTwist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'posetwists) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AggregatedPoseTwist>))
  "Converts a ROS message object to a list"
  (cl:list 'AggregatedPoseTwist
    (cl:cons ':header (header msg))
    (cl:cons ':posetwists (posetwists msg))
))
