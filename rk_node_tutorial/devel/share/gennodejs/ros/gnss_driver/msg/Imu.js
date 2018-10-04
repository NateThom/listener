// Auto-generated. Do not edit!

// (in-package gnss_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose = require('./Pose.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Imu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imu = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Imu
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = Pose.serialize(obj.imu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Imu
    let len;
    let data = new Imu(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 184;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/Imu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd872bb872d5ed4666e259b29aa20d9c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Pose imu
    
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
    MSG: gnss_driver/Pose
    PointENU position
    Quaternion orientation
    Point3D linear_velocity
    Point3D linear_acceleration
    Point3D angular_velocity
    
    float64 heading
    Point3D linear_acceleration_vrf
    Point3D angular_velocity_vrf
    
    ================================================================================
    MSG: gnss_driver/PointENU
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: gnss_driver/Quaternion
    float64 qx
    float64 qy
    float64 qz
    float64 qw
    
    ================================================================================
    MSG: gnss_driver/Point3D
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Imu(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.imu !== undefined) {
      resolved.imu = Pose.Resolve(msg.imu)
    }
    else {
      resolved.imu = new Pose()
    }

    return resolved;
    }
};

module.exports = Imu;
