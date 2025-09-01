// Auto-generated. Do not edit!

// (in-package auv_model.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Sidescan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.time = null;
      this.frequency_id = null;
      this.gain = null;
      this.decimation = null;
      this.max_duration = null;
      this.port_channel = null;
      this.starboard_channel = null;
      this.extra_channel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('frequency_id')) {
        this.frequency_id = initObj.frequency_id
      }
      else {
        this.frequency_id = 0;
      }
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = 0;
      }
      if (initObj.hasOwnProperty('decimation')) {
        this.decimation = initObj.decimation
      }
      else {
        this.decimation = 0;
      }
      if (initObj.hasOwnProperty('max_duration')) {
        this.max_duration = initObj.max_duration
      }
      else {
        this.max_duration = 0.0;
      }
      if (initObj.hasOwnProperty('port_channel')) {
        this.port_channel = initObj.port_channel
      }
      else {
        this.port_channel = [];
      }
      if (initObj.hasOwnProperty('starboard_channel')) {
        this.starboard_channel = initObj.starboard_channel
      }
      else {
        this.starboard_channel = [];
      }
      if (initObj.hasOwnProperty('extra_channel')) {
        this.extra_channel = initObj.extra_channel
      }
      else {
        this.extra_channel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sidescan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.uint32(obj.time, buffer, bufferOffset);
    // Serialize message field [frequency_id]
    bufferOffset = _serializer.uint8(obj.frequency_id, buffer, bufferOffset);
    // Serialize message field [gain]
    bufferOffset = _serializer.int16(obj.gain, buffer, bufferOffset);
    // Serialize message field [decimation]
    bufferOffset = _serializer.uint16(obj.decimation, buffer, bufferOffset);
    // Serialize message field [max_duration]
    bufferOffset = _serializer.float32(obj.max_duration, buffer, bufferOffset);
    // Serialize message field [port_channel]
    bufferOffset = _arraySerializer.uint8(obj.port_channel, buffer, bufferOffset, null);
    // Serialize message field [starboard_channel]
    bufferOffset = _arraySerializer.uint8(obj.starboard_channel, buffer, bufferOffset, null);
    // Serialize message field [extra_channel]
    bufferOffset = _arraySerializer.uint8(obj.extra_channel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sidescan
    let len;
    let data = new Sidescan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frequency_id]
    data.frequency_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gain]
    data.gain = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [decimation]
    data.decimation = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_duration]
    data.max_duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [port_channel]
    data.port_channel = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [starboard_channel]
    data.starboard_channel = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [extra_channel]
    data.extra_channel = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.port_channel.length;
    length += object.starboard_channel.length;
    length += object.extra_channel.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auv_model/Sidescan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11582401bb2ec522a6efe57254b1f054';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8   type          # Packet Type, 0xE2 = Sonar 8 Bit
    uint32  time          # Ping time   [100 us]
    uint8   frequency_id  # Freq Id, currently 0x00
    int16   gain
    uint16  decimation
    float32 max_duration  # Max travel time of outermost bins (s)
    uint8[] port_channel
    uint8[] starboard_channel
    uint8[] extra_channel
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sidescan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.frequency_id !== undefined) {
      resolved.frequency_id = msg.frequency_id;
    }
    else {
      resolved.frequency_id = 0
    }

    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = 0
    }

    if (msg.decimation !== undefined) {
      resolved.decimation = msg.decimation;
    }
    else {
      resolved.decimation = 0
    }

    if (msg.max_duration !== undefined) {
      resolved.max_duration = msg.max_duration;
    }
    else {
      resolved.max_duration = 0.0
    }

    if (msg.port_channel !== undefined) {
      resolved.port_channel = msg.port_channel;
    }
    else {
      resolved.port_channel = []
    }

    if (msg.starboard_channel !== undefined) {
      resolved.starboard_channel = msg.starboard_channel;
    }
    else {
      resolved.starboard_channel = []
    }

    if (msg.extra_channel !== undefined) {
      resolved.extra_channel = msg.extra_channel;
    }
    else {
      resolved.extra_channel = []
    }

    return resolved;
    }
};

module.exports = Sidescan;
