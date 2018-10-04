// Auto-generated. Do not edit!

// (in-package gnss_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RangeInfo = require('./RangeInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.measurement_time = null;
      this.ranges = null;
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
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssRange
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [measurement_time]
    bufferOffset = _serializer.float64(obj.measurement_time, buffer, bufferOffset);
    // Serialize message field [ranges]
    // Serialize the length for message field [ranges]
    bufferOffset = _serializer.uint32(obj.ranges.length, buffer, bufferOffset);
    obj.ranges.forEach((val) => {
      bufferOffset = RangeInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssRange
    let len;
    let data = new GnssRange(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement_time]
    data.measurement_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ranges]
    // Deserialize array length for message field [ranges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ranges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ranges[i] = RangeInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 52 * object.ranges.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/GnssRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98189513fbb1deb4e990550a5fe42c3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 measurement_time
    RangeInfo[] ranges
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
    MSG: gnss_driver/RangeInfo
    int32 GPS=0
    int32 GLONASS=1
    int32 SBAS=2
    int32 GALILEO=3
    int32 BEIDOU=4
    int32 QZSS=5
    
    int32 constellation
    int32 prn
    
    uint32 carrier_frequency
    float64 pseudorange
    float32 pseudorange_std_dev
    float64 carrier_phase
    float32 carrier_phase_std_dev
    float32 doppler
    float32 doppler_std_dev
    int32 cno
    int32 lock_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssRange(null);
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

    if (msg.ranges !== undefined) {
      resolved.ranges = new Array(msg.ranges.length);
      for (let i = 0; i < resolved.ranges.length; ++i) {
        resolved.ranges[i] = RangeInfo.Resolve(msg.ranges[i]);
      }
    }
    else {
      resolved.ranges = []
    }

    return resolved;
    }
};

module.exports = GnssRange;
