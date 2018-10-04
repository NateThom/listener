// Auto-generated. Do not edit!

// (in-package gnss_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.solution_completed = null;
      this.solution_status = null;
      this.position_type = null;
      this.num_sats = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('solution_completed')) {
        this.solution_completed = initObj.solution_completed
      }
      else {
        this.solution_completed = false;
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
      if (initObj.hasOwnProperty('num_sats')) {
        this.num_sats = initObj.num_sats
      }
      else {
        this.num_sats = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [solution_completed]
    bufferOffset = _serializer.bool(obj.solution_completed, buffer, bufferOffset);
    // Serialize message field [solution_status]
    bufferOffset = _serializer.uint32(obj.solution_status, buffer, bufferOffset);
    // Serialize message field [position_type]
    bufferOffset = _serializer.uint32(obj.position_type, buffer, bufferOffset);
    // Serialize message field [num_sats]
    bufferOffset = _serializer.int32(obj.num_sats, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssStatus
    let len;
    let data = new GnssStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [solution_completed]
    data.solution_completed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [solution_status]
    data.solution_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position_type]
    data.position_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_sats]
    data.num_sats = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/GnssStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcc70857aecd5140aa4f8b0640315349';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool solution_completed
    uint32 solution_status
    uint32 position_type
    int32 num_sats
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.solution_completed !== undefined) {
      resolved.solution_completed = msg.solution_completed;
    }
    else {
      resolved.solution_completed = false
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

    if (msg.num_sats !== undefined) {
      resolved.num_sats = msg.num_sats;
    }
    else {
      resolved.num_sats = 0
    }

    return resolved;
    }
};

module.exports = GnssStatus;
