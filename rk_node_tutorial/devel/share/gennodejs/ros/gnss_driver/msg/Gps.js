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

class Gps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.localization = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('localization')) {
        this.localization = initObj.localization
      }
      else {
        this.localization = new Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gps
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [localization]
    bufferOffset = Pose.serialize(obj.localization, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gps
    let len;
    let data = new Gps(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [localization]
    data.localization = Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 184;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/Gps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88bde8f07fbec774b15776c61844ed3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Pose localization
    
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
    const resolved = new Gps(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.localization !== undefined) {
      resolved.localization = Pose.Resolve(msg.localization)
    }
    else {
      resolved.localization = new Pose()
    }

    return resolved;
    }
};

module.exports = Gps;
