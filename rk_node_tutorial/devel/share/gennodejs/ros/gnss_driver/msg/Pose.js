// Auto-generated. Do not edit!

// (in-package gnss_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointENU = require('./PointENU.js');
let Quaternion = require('./Quaternion.js');
let Point3D = require('./Point3D.js');

//-----------------------------------------------------------

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
      this.linear_velocity = null;
      this.linear_acceleration = null;
      this.angular_velocity = null;
      this.heading = null;
      this.linear_acceleration_vrf = null;
      this.angular_velocity_vrf = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new PointENU();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Quaternion();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new Point3D();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_vrf')) {
        this.linear_acceleration_vrf = initObj.linear_acceleration_vrf
      }
      else {
        this.linear_acceleration_vrf = new Point3D();
      }
      if (initObj.hasOwnProperty('angular_velocity_vrf')) {
        this.angular_velocity_vrf = initObj.angular_velocity_vrf
      }
      else {
        this.angular_velocity_vrf = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [position]
    bufferOffset = PointENU.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = Point3D.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = Point3D.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = Point3D.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_vrf]
    bufferOffset = Point3D.serialize(obj.linear_acceleration_vrf, buffer, bufferOffset);
    // Serialize message field [angular_velocity_vrf]
    bufferOffset = Point3D.serialize(obj.angular_velocity_vrf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [position]
    data.position = PointENU.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_vrf]
    data.linear_acceleration_vrf = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_vrf]
    data.angular_velocity_vrf = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 184;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_driver/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f88501e9ff1cc28ee87abe3d800d0709';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Pose(null);
    if (msg.position !== undefined) {
      resolved.position = PointENU.Resolve(msg.position)
    }
    else {
      resolved.position = new PointENU()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new Quaternion()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = Point3D.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new Point3D()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = Point3D.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new Point3D()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Point3D.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Point3D()
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.linear_acceleration_vrf !== undefined) {
      resolved.linear_acceleration_vrf = Point3D.Resolve(msg.linear_acceleration_vrf)
    }
    else {
      resolved.linear_acceleration_vrf = new Point3D()
    }

    if (msg.angular_velocity_vrf !== undefined) {
      resolved.angular_velocity_vrf = Point3D.Resolve(msg.angular_velocity_vrf)
    }
    else {
      resolved.angular_velocity_vrf = new Point3D()
    }

    return resolved;
    }
};

module.exports = Pose;
