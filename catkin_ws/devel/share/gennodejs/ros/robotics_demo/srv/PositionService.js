// Auto-generated. Do not edit!

// (in-package robotics_demo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PosRot = require('../msg/PosRot.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PositionServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = new PosRot();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionServiceRequest
    // Serialize message field [input]
    bufferOffset = PosRot.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionServiceRequest
    let len;
    let data = new PositionServiceRequest(null);
    // Deserialize message field [input]
    data.input = PosRot.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PosRot.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_demo/PositionServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd0742a57f699ed2087743384a0ea3dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PosRot input
    
    ================================================================================
    MSG: robotics_demo/PosRot
    float32 pos_x
    float32 pos_y
    float32 pos_z
    float32 rot_x
    float32 rot_y
    float32 rot_z
    float32 rot_w
    string id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionServiceRequest(null);
    if (msg.input !== undefined) {
      resolved.input = PosRot.Resolve(msg.input)
    }
    else {
      resolved.input = new PosRot()
    }

    return resolved;
    }
};

class PositionServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = new PosRot();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionServiceResponse
    // Serialize message field [output]
    bufferOffset = PosRot.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionServiceResponse
    let len;
    let data = new PositionServiceResponse(null);
    // Deserialize message field [output]
    data.output = PosRot.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PosRot.getMessageSize(object.output);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics_demo/PositionServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3de20a0b2a7468dbd60e3a558bf7e00d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PosRot output
    
    ================================================================================
    MSG: robotics_demo/PosRot
    float32 pos_x
    float32 pos_y
    float32 pos_z
    float32 rot_x
    float32 rot_y
    float32 rot_z
    float32 rot_w
    string id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionServiceResponse(null);
    if (msg.output !== undefined) {
      resolved.output = PosRot.Resolve(msg.output)
    }
    else {
      resolved.output = new PosRot()
    }

    return resolved;
    }
};

module.exports = {
  Request: PositionServiceRequest,
  Response: PositionServiceResponse,
  md5sum() { return 'b2629d4cbee41789622cf2931b4df30e'; },
  datatype() { return 'robotics_demo/PositionService'; }
};
