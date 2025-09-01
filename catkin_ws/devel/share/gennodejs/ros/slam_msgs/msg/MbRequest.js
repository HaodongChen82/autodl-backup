// Auto-generated. Do not edit!

// (in-package slam_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MbRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.particle_id = null;
      this.mb_size = null;
    }
    else {
      if (initObj.hasOwnProperty('particle_id')) {
        this.particle_id = initObj.particle_id
      }
      else {
        this.particle_id = 0;
      }
      if (initObj.hasOwnProperty('mb_size')) {
        this.mb_size = initObj.mb_size
      }
      else {
        this.mb_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MbRequest
    // Serialize message field [particle_id]
    bufferOffset = _serializer.int32(obj.particle_id, buffer, bufferOffset);
    // Serialize message field [mb_size]
    bufferOffset = _serializer.int32(obj.mb_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MbRequest
    let len;
    let data = new MbRequest(null);
    // Deserialize message field [particle_id]
    data.particle_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mb_size]
    data.mb_size = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'slam_msgs/MbRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a6053386fd7d0a43b8fbe57150c1836';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 particle_id
    int32 mb_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MbRequest(null);
    if (msg.particle_id !== undefined) {
      resolved.particle_id = msg.particle_id;
    }
    else {
      resolved.particle_id = 0
    }

    if (msg.mb_size !== undefined) {
      resolved.mb_size = msg.mb_size;
    }
    else {
      resolved.mb_size = 0
    }

    return resolved;
    }
};

module.exports = MbRequest;
