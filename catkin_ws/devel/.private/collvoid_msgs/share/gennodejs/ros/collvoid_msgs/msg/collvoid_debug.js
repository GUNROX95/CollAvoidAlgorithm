// Auto-generated. Do not edit!

// (in-package collvoid_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class collvoid_debug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.run = null;
      this.cmd_vel = null;
      this.holo_vel = null;
      this.odom = null;
      this.ground_truth = null;
      this.located_pose = null;
      this.loc_error = null;
      this.radius_uncertainty = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('run')) {
        this.run = initObj.run
      }
      else {
        this.run = 0;
      }
      if (initObj.hasOwnProperty('cmd_vel')) {
        this.cmd_vel = initObj.cmd_vel
      }
      else {
        this.cmd_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('holo_vel')) {
        this.holo_vel = initObj.holo_vel
      }
      else {
        this.holo_vel = new geometry_msgs.msg.Vector3Stamped();
      }
      if (initObj.hasOwnProperty('odom')) {
        this.odom = initObj.odom
      }
      else {
        this.odom = new nav_msgs.msg.Odometry();
      }
      if (initObj.hasOwnProperty('ground_truth')) {
        this.ground_truth = initObj.ground_truth
      }
      else {
        this.ground_truth = new nav_msgs.msg.Odometry();
      }
      if (initObj.hasOwnProperty('located_pose')) {
        this.located_pose = initObj.located_pose
      }
      else {
        this.located_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('loc_error')) {
        this.loc_error = initObj.loc_error
      }
      else {
        this.loc_error = 0.0;
      }
      if (initObj.hasOwnProperty('radius_uncertainty')) {
        this.radius_uncertainty = initObj.radius_uncertainty
      }
      else {
        this.radius_uncertainty = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type collvoid_debug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [run]
    bufferOffset = _serializer.int32(obj.run, buffer, bufferOffset);
    // Serialize message field [cmd_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.cmd_vel, buffer, bufferOffset);
    // Serialize message field [holo_vel]
    bufferOffset = geometry_msgs.msg.Vector3Stamped.serialize(obj.holo_vel, buffer, bufferOffset);
    // Serialize message field [odom]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.odom, buffer, bufferOffset);
    // Serialize message field [ground_truth]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.ground_truth, buffer, bufferOffset);
    // Serialize message field [located_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.located_pose, buffer, bufferOffset);
    // Serialize message field [loc_error]
    bufferOffset = _serializer.float32(obj.loc_error, buffer, bufferOffset);
    // Serialize message field [radius_uncertainty]
    bufferOffset = _serializer.float32(obj.radius_uncertainty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type collvoid_debug
    let len;
    let data = new collvoid_debug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [run]
    data.run = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cmd_vel]
    data.cmd_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [holo_vel]
    data.holo_vel = geometry_msgs.msg.Vector3Stamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [odom]
    data.odom = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [ground_truth]
    data.ground_truth = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [located_pose]
    data.located_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [loc_error]
    data.loc_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius_uncertainty]
    data.radius_uncertainty = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.Vector3Stamped.getMessageSize(object.holo_vel);
    length += nav_msgs.msg.Odometry.getMessageSize(object.odom);
    length += nav_msgs.msg.Odometry.getMessageSize(object.ground_truth);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.located_pose);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'collvoid_msgs/collvoid_debug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a304cee99f1657d40961f7cc6bca76f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new collvoid_debug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.run !== undefined) {
      resolved.run = msg.run;
    }
    else {
      resolved.run = 0
    }

    if (msg.cmd_vel !== undefined) {
      resolved.cmd_vel = geometry_msgs.msg.Twist.Resolve(msg.cmd_vel)
    }
    else {
      resolved.cmd_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.holo_vel !== undefined) {
      resolved.holo_vel = geometry_msgs.msg.Vector3Stamped.Resolve(msg.holo_vel)
    }
    else {
      resolved.holo_vel = new geometry_msgs.msg.Vector3Stamped()
    }

    if (msg.odom !== undefined) {
      resolved.odom = nav_msgs.msg.Odometry.Resolve(msg.odom)
    }
    else {
      resolved.odom = new nav_msgs.msg.Odometry()
    }

    if (msg.ground_truth !== undefined) {
      resolved.ground_truth = nav_msgs.msg.Odometry.Resolve(msg.ground_truth)
    }
    else {
      resolved.ground_truth = new nav_msgs.msg.Odometry()
    }

    if (msg.located_pose !== undefined) {
      resolved.located_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.located_pose)
    }
    else {
      resolved.located_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.loc_error !== undefined) {
      resolved.loc_error = msg.loc_error;
    }
    else {
      resolved.loc_error = 0.0
    }

    if (msg.radius_uncertainty !== undefined) {
      resolved.radius_uncertainty = msg.radius_uncertainty;
    }
    else {
      resolved.radius_uncertainty = 0.0
    }

    return resolved;
    }
};

module.exports = collvoid_debug;
