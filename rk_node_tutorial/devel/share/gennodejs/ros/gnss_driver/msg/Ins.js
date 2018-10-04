// Auto-generated. Do not edit!

// (in-package gnss_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointLLH = require('./PointLLH.js');
let Point3D = require('./Point3D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Ins {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.measurement_time = null;
      this.type = null;
      this.position = null;
      this.euler_angles = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
      this.linear_acceleration = null;
      this.position_covariance = null;
      this.euler_angles_covariance = null;
      this.linear_velocity_covariance = null;
      this.angular_velocity_covariance = null;
      this.linear_acceleration_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('measurement_time')) {
        this.measurement_time = initObj.measurement_time
      }
      else {
        this.measurement_time = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new PointLLH();
      }
      if (initObj.hasOwnProperty('euler_angles')) {
        this.euler_angles = initObj.euler_angles
      }
      else {
        this.euler_angles = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new Point3D();
      }
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = [];
      }
      if (initObj.hasOwnProperty('euler_angles_covariance')) {
        this.euler_angles_covariance = initObj.euler_angles_covariance
      }
      else {
        this.euler_angles_covariance = [];
      }
      if (initObj.hasOwnProperty('linear_velocity_covariance')) {
        this.linear_velocity_covariance = initObj.linear_velocity_covariance
      }
      else {
        this.linear_velocity_covariance = [];
      }
      if (initObj.hasOwnProperty('angular_velocity_covariance')) {
        this.angular_velocity_covariance = initObj.angular_velocity_covariance
      }
      else {
        this.angular_velocity_covariance = [];
      }
      if (initObj.hasOwnProperty('linear_acceleration_covariance')) {
        this.linear_acceleration_covariance = initObj.linear_acceleration_covariance
      }
      else {
        this.linear_acceleration_covariance = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ins
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [measurement_time]
    bufferOffset = _serializer.float64(obj.measurement_time, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = PointLLH.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [euler_angles]
    bufferOffset = Point3D.serialize(obj.euler_angles, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = Point3D.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = Point3D.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = Point3D.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float32(obj.position_covariance, buffer, bufferOffset, null);
    // Serialize message field [euler_angles_covariance]
    bufferOffset = _arraySerializer.float32(obj.euler_angles_covariance, buffer, bufferOffset, null);
    // Serialize message field [linear_velocity_covariance]
    bufferOffset = _arraySerializer.float32(obj.linear_velocity_covariance, buffer, bufferOffset, null);
    // Serialize message field [angular_velocity_covariance]
    bufferOffset = _arraySerializer.float32(obj.angular_velocity_covariance, buffer, bufferOffset, null);
    // Serialize message field [linear_acceleration_covariance]
    bufferOffset = _arraySerializer.float32(obj.linear_acceleration_covariance, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ins
    let len;
    let data = new Ins(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement_time]
    data.measurement_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = PointLLH.deserialize(buffer, bufferOffset);
    // Deserialize message field [euler_angles]
    data.euler_angles = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [euler_angles_covariance]
    data.euler_angles_covariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [linear_velocity_covariance]
    data.linear_velocity_covariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [angular_velocity_covariance]
    data.angular_velocity_covariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [linear_acceleration_covariance]
    data.linear_acceleration_covariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.position_covariance.length;
    length += 4 * object.euler_angles_covariance.length;
    length += 4 * object.linear_velocity_covariance.length;
    length += 4 * object.angular_velocity_covariance.length;
    length += 4 * object.linear_acceleration_covariance.length;
    return length + 152;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/Ins';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa4f9086662ec13f5100709ba926f39b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 measurement_time
    
    uint32 INVALID=0
    uint32 CONVERGING=1
    uint32 GOOD=2
    
    uint32 type
    PointLLH position
    Point3D euler_angles
    Point3D linear_velocity
    Point3D angular_velocity
    Point3D linear_acceleration
    
    float32[] position_covariance
    float32[] euler_angles_covariance
    float32[] linear_velocity_covariance
    float32[] angular_velocity_covariance
    float32[] linear_acceleration_covariance
    
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
    MSG: gnss_driver/PointLLH
    float64 lon
    float64 lat
    float64 height
    
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
    const resolved = new Ins(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.measurement_time !== undefined) {
      resolved.measurement_time = msg.measurement_time;
    }
    else {
      resolved.measurement_time = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.position !== undefined) {
      resolved.position = PointLLH.Resolve(msg.position)
    }
    else {
      resolved.position = new PointLLH()
    }

    if (msg.euler_angles !== undefined) {
      resolved.euler_angles = Point3D.Resolve(msg.euler_angles)
    }
    else {
      resolved.euler_angles = new Point3D()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = Point3D.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new Point3D()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Point3D.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Point3D()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = Point3D.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new Point3D()
    }

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = []
    }

    if (msg.euler_angles_covariance !== undefined) {
      resolved.euler_angles_covariance = msg.euler_angles_covariance;
    }
    else {
      resolved.euler_angles_covariance = []
    }

    if (msg.linear_velocity_covariance !== undefined) {
      resolved.linear_velocity_covariance = msg.linear_velocity_covariance;
    }
    else {
      resolved.linear_velocity_covariance = []
    }

    if (msg.angular_velocity_covariance !== undefined) {
      resolved.angular_velocity_covariance = msg.angular_velocity_covariance;
    }
    else {
      resolved.angular_velocity_covariance = []
    }

    if (msg.linear_acceleration_covariance !== undefined) {
      resolved.linear_acceleration_covariance = msg.linear_acceleration_covariance;
    }
    else {
      resolved.linear_acceleration_covariance = []
    }

    return resolved;
    }
};

// Constants for message
Ins.Constants = {
  INVALID: 0,
  CONVERGING: 1,
  GOOD: 2,
}

module.exports = Ins;
