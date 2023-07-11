// Auto-generated. Do not edit!

// (in-package articulation_model_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ActionsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionsMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionsMsg
    let len;
    let data = new ActionsMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 56 * object.actions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'articulation_model_msgs/ActionsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edfe36b729cee3e9f2d41537b0b17fd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #goal definition
    std_msgs/Header header                        # frame and timestamp
    
    geometry_msgs/Pose[] actions
    
    #---
    #result definition
    #int32[] sequence
    #---
    #feedback
    #int32[] sequence
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionsMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = geometry_msgs.msg.Pose.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

module.exports = ActionsMsg;
