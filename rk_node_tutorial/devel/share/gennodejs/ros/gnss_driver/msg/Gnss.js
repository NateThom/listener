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

class Gnss {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.measurement_time = null;
      this.velocity_latency = null;
      this.position = null;
      this.position_std_dev = null;
      this.linear_velocity = null;
      this.linear_velocity_std_dev = null;
      this.num_sats = null;
      this.type = null;
      this.solution_status = null;
      this.position_type = null;
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
      if (initObj.hasOwnProperty('velocity_latency')) {
        this.velocity_latency = initObj.velocity_latency
      }
      else {
        this.velocity_latency = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new PointLLH();
      }
      if (initObj.hasOwnProperty('position_std_dev')) {
        this.position_std_dev = initObj.position_std_dev
      }
      else {
        this.position_std_dev = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_velocity_std_dev')) {
        this.linear_velocity_std_dev = initObj.linear_velocity_std_dev
      }
      else {
        this.linear_velocity_std_dev = new Point3D();
      }
      if (initObj.hasOwnProperty('num_sats')) {
        this.num_sats = initObj.num_sats
      }
      else {
        this.num_sats = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('solution_status')) {
        this.solution_status = initObj.solution_status
      }
      else {
        this.solution_status = 0;
      }
      if (initObj.hasOwnProperty('position_type')) {
        this.position_type = initObj.position_type
      }
      else {
        this.position_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gnss
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [measurement_time]
    bufferOffset = _serializer.float64(obj.measurement_time, buffer, bufferOffset);
    // Serialize message field [velocity_latency]
    bufferOffset = _serializer.float32(obj.velocity_latency, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = PointLLH.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [position_std_dev]
    bufferOffset = Point3D.serialize(obj.position_std_dev, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = Point3D.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [linear_velocity_std_dev]
    bufferOffset = Point3D.serialize(obj.linear_velocity_std_dev, buffer, bufferOffset);
    // Serialize message field [num_sats]
    bufferOffset = _serializer.int32(obj.num_sats, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [solution_status]
    bufferOffset = _serializer.uint32(obj.solution_status, buffer, bufferOffset);
    // Serialize message field [position_type]
    bufferOffset = _serializer.uint32(obj.position_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gnss
    let len;
    let data = new Gnss(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement_time]
    data.measurement_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_latency]
    data.velocity_latency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = PointLLH.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_std_dev]
    data.position_std_dev = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_std_dev]
    data.linear_velocity_std_dev = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_sats]
    data.num_sats = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [solution_status]
    data.solution_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position_type]
    data.position_type = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/Gnss';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de82954b18f7418bd62c4ba27cf8d96f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 measurement_time
    float32 velocity_latency
    PointLLH position
    Point3D position_std_dev
    Point3D linear_velocity
    Point3D linear_velocity_std_dev
    int32 num_sats
    
    int32 INVALID=0
    int32 PROPAGATED=1
    int32 SINGLE=2
    int32 PSRDIFF=3
    int32 PPP=4
    int32 RTK_FLOAT=5
    int32 RTK_INTEGER=6
    
    int32 type
    uint32 solution_status
    uint32 position_type
    
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
    const resolved = new Gnss(null);
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

    if (msg.velocity_latency !== undefined) {
      resolved.velocity_latency = msg.velocity_latency;
    }
    else {
      resolved.velocity_latency = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = PointLLH.Resolve(msg.position)
    }
    else {
      resolved.position = new PointLLH()
    }

    if (msg.position_std_dev !== undefined) {
      resolved.position_std_dev = Point3D.Resolve(msg.position_std_dev)
    }
    else {
      resolved.position_std_dev = new Point3D()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = Point3D.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new Point3D()
    }

    if (msg.linear_velocity_std_dev !== undefined) {
      resolved.linear_velocity_std_dev = Point3D.Resolve(msg.linear_velocity_std_dev)
    }
    else {
      resolved.linear_velocity_std_dev = new Point3D()
    }

    if (msg.num_sats !== undefined) {
      resolved.num_sats = msg.num_sats;
    }
    else {
      resolved.num_sats = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.solution_status !== undefined) {
      resolved.solution_status = msg.solution_status;
    }
    else {
      resolved.solution_status = 0
    }

    if (msg.position_type !== undefined) {
      resolved.position_type = msg.position_type;
    }
    else {
      resolved.position_type = 0
    }

    return resolved;
    }
};

// Constants for message
Gnss.Constants = {
  INVALID: 0,
  PROPAGATED: 1,
  SINGLE: 2,
  PSRDIFF: 3,
  PPP: 4,
  RTK_FLOAT: 5,
  RTK_INTEGER: 6,
}

module.exports = Gnss;
