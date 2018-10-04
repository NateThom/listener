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

class StreamStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ins_stream_type = null;
      this.rtk_stream_in_type = null;
      this.rtk_stream_out_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ins_stream_type')) {
        this.ins_stream_type = initObj.ins_stream_type
      }
      else {
        this.ins_stream_type = 0;
      }
      if (initObj.hasOwnProperty('rtk_stream_in_type')) {
        this.rtk_stream_in_type = initObj.rtk_stream_in_type
      }
      else {
        this.rtk_stream_in_type = 0;
      }
      if (initObj.hasOwnProperty('rtk_stream_out_type')) {
        this.rtk_stream_out_type = initObj.rtk_stream_out_type
      }
      else {
        this.rtk_stream_out_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StreamStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ins_stream_type]
    bufferOffset = _serializer.uint32(obj.ins_stream_type, buffer, bufferOffset);
    // Serialize message field [rtk_stream_in_type]
    bufferOffset = _serializer.uint32(obj.rtk_stream_in_type, buffer, bufferOffset);
    // Serialize message field [rtk_stream_out_type]
    bufferOffset = _serializer.uint32(obj.rtk_stream_out_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StreamStatus
    let len;
    let data = new StreamStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ins_stream_type]
    data.ins_stream_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rtk_stream_in_type]
    data.rtk_stream_in_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rtk_stream_out_type]
    data.rtk_stream_out_type = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/StreamStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '684d0fb3e4841d4ebe4b6718a9cbfae6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint32 DISCONNECTED=0
    uint32 CONNECTED=1
    
    uint32 ins_stream_type
    uint32 rtk_stream_in_type
    uint32 rtk_stream_out_type
    
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
    const resolved = new StreamStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ins_stream_type !== undefined) {
      resolved.ins_stream_type = msg.ins_stream_type;
    }
    else {
      resolved.ins_stream_type = 0
    }

    if (msg.rtk_stream_in_type !== undefined) {
      resolved.rtk_stream_in_type = msg.rtk_stream_in_type;
    }
    else {
      resolved.rtk_stream_in_type = 0
    }

    if (msg.rtk_stream_out_type !== undefined) {
      resolved.rtk_stream_out_type = msg.rtk_stream_out_type;
    }
    else {
      resolved.rtk_stream_out_type = 0
    }

    return resolved;
    }
};

// Constants for message
StreamStatus.Constants = {
  DISCONNECTED: 0,
  CONNECTED: 1,
}

module.exports = StreamStatus;
