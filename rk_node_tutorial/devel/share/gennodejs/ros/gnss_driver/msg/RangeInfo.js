// Auto-generated. Do not edit!

// (in-package gnss_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RangeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.constellation = null;
      this.prn = null;
      this.carrier_frequency = null;
      this.pseudorange = null;
      this.pseudorange_std_dev = null;
      this.carrier_phase = null;
      this.carrier_phase_std_dev = null;
      this.doppler = null;
      this.doppler_std_dev = null;
      this.cno = null;
      this.lock_time = null;
    }
    else {
      if (initObj.hasOwnProperty('constellation')) {
        this.constellation = initObj.constellation
      }
      else {
        this.constellation = 0;
      }
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('carrier_frequency')) {
        this.carrier_frequency = initObj.carrier_frequency
      }
      else {
        this.carrier_frequency = 0;
      }
      if (initObj.hasOwnProperty('pseudorange')) {
        this.pseudorange = initObj.pseudorange
      }
      else {
        this.pseudorange = 0.0;
      }
      if (initObj.hasOwnProperty('pseudorange_std_dev')) {
        this.pseudorange_std_dev = initObj.pseudorange_std_dev
      }
      else {
        this.pseudorange_std_dev = 0.0;
      }
      if (initObj.hasOwnProperty('carrier_phase')) {
        this.carrier_phase = initObj.carrier_phase
      }
      else {
        this.carrier_phase = 0.0;
      }
      if (initObj.hasOwnProperty('carrier_phase_std_dev')) {
        this.carrier_phase_std_dev = initObj.carrier_phase_std_dev
      }
      else {
        this.carrier_phase_std_dev = 0.0;
      }
      if (initObj.hasOwnProperty('doppler')) {
        this.doppler = initObj.doppler
      }
      else {
        this.doppler = 0.0;
      }
      if (initObj.hasOwnProperty('doppler_std_dev')) {
        this.doppler_std_dev = initObj.doppler_std_dev
      }
      else {
        this.doppler_std_dev = 0.0;
      }
      if (initObj.hasOwnProperty('cno')) {
        this.cno = initObj.cno
      }
      else {
        this.cno = 0;
      }
      if (initObj.hasOwnProperty('lock_time')) {
        this.lock_time = initObj.lock_time
      }
      else {
        this.lock_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeInfo
    // Serialize message field [constellation]
    bufferOffset = _serializer.int32(obj.constellation, buffer, bufferOffset);
    // Serialize message field [prn]
    bufferOffset = _serializer.int32(obj.prn, buffer, bufferOffset);
    // Serialize message field [carrier_frequency]
    bufferOffset = _serializer.uint32(obj.carrier_frequency, buffer, bufferOffset);
    // Serialize message field [pseudorange]
    bufferOffset = _serializer.float64(obj.pseudorange, buffer, bufferOffset);
    // Serialize message field [pseudorange_std_dev]
    bufferOffset = _serializer.float32(obj.pseudorange_std_dev, buffer, bufferOffset);
    // Serialize message field [carrier_phase]
    bufferOffset = _serializer.float64(obj.carrier_phase, buffer, bufferOffset);
    // Serialize message field [carrier_phase_std_dev]
    bufferOffset = _serializer.float32(obj.carrier_phase_std_dev, buffer, bufferOffset);
    // Serialize message field [doppler]
    bufferOffset = _serializer.float32(obj.doppler, buffer, bufferOffset);
    // Serialize message field [doppler_std_dev]
    bufferOffset = _serializer.float32(obj.doppler_std_dev, buffer, bufferOffset);
    // Serialize message field [cno]
    bufferOffset = _serializer.int32(obj.cno, buffer, bufferOffset);
    // Serialize message field [lock_time]
    bufferOffset = _serializer.int32(obj.lock_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeInfo
    let len;
    let data = new RangeInfo(null);
    // Deserialize message field [constellation]
    data.constellation = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [prn]
    data.prn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [carrier_frequency]
    data.carrier_frequency = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pseudorange]
    data.pseudorange = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pseudorange_std_dev]
    data.pseudorange_std_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carrier_phase]
    data.carrier_phase = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [carrier_phase_std_dev]
    data.carrier_phase_std_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [doppler]
    data.doppler = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [doppler_std_dev]
    data.doppler_std_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cno]
    data.cno = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lock_time]
    data.lock_time = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/RangeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6792b8c07d815111a6e39320c1f1b541';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RangeInfo(null);
    if (msg.constellation !== undefined) {
      resolved.constellation = msg.constellation;
    }
    else {
      resolved.constellation = 0
    }

    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.carrier_frequency !== undefined) {
      resolved.carrier_frequency = msg.carrier_frequency;
    }
    else {
      resolved.carrier_frequency = 0
    }

    if (msg.pseudorange !== undefined) {
      resolved.pseudorange = msg.pseudorange;
    }
    else {
      resolved.pseudorange = 0.0
    }

    if (msg.pseudorange_std_dev !== undefined) {
      resolved.pseudorange_std_dev = msg.pseudorange_std_dev;
    }
    else {
      resolved.pseudorange_std_dev = 0.0
    }

    if (msg.carrier_phase !== undefined) {
      resolved.carrier_phase = msg.carrier_phase;
    }
    else {
      resolved.carrier_phase = 0.0
    }

    if (msg.carrier_phase_std_dev !== undefined) {
      resolved.carrier_phase_std_dev = msg.carrier_phase_std_dev;
    }
    else {
      resolved.carrier_phase_std_dev = 0.0
    }

    if (msg.doppler !== undefined) {
      resolved.doppler = msg.doppler;
    }
    else {
      resolved.doppler = 0.0
    }

    if (msg.doppler_std_dev !== undefined) {
      resolved.doppler_std_dev = msg.doppler_std_dev;
    }
    else {
      resolved.doppler_std_dev = 0.0
    }

    if (msg.cno !== undefined) {
      resolved.cno = msg.cno;
    }
    else {
      resolved.cno = 0
    }

    if (msg.lock_time !== undefined) {
      resolved.lock_time = msg.lock_time;
    }
    else {
      resolved.lock_time = 0
    }

    return resolved;
    }
};

// Constants for message
RangeInfo.Constants = {
  GPS: 0,
  GLONASS: 1,
  SBAS: 2,
  GALILEO: 3,
  BEIDOU: 4,
  QZSS: 5,
}

module.exports = RangeInfo;
