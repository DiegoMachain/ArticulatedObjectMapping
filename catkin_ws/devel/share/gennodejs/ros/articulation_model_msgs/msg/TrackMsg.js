// Auto-generated. Do not edit!

// (in-package articulation_model_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.pose = null;
      this.pose_headers = null;
      this.pose_projected = null;
      this.pose_resampled = null;
      this.pose_flags = null;
      this.channels = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('pose_headers')) {
        this.pose_headers = initObj.pose_headers
      }
      else {
        this.pose_headers = [];
      }
      if (initObj.hasOwnProperty('pose_projected')) {
        this.pose_projected = initObj.pose_projected
      }
      else {
        this.pose_projected = [];
      }
      if (initObj.hasOwnProperty('pose_resampled')) {
        this.pose_resampled = initObj.pose_resampled
      }
      else {
        this.pose_resampled = [];
      }
      if (initObj.hasOwnProperty('pose_flags')) {
        this.pose_flags = initObj.pose_flags
      }
      else {
        this.pose_flags = [];
      }
      if (initObj.hasOwnProperty('channels')) {
        this.channels = initObj.channels
      }
      else {
        this.channels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [pose]
    // Serialize the length for message field [pose]
    bufferOffset = _serializer.uint32(obj.pose.length, buffer, bufferOffset);
    obj.pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pose_headers]
    // Serialize the length for message field [pose_headers]
    bufferOffset = _serializer.uint32(obj.pose_headers.length, buffer, bufferOffset);
    obj.pose_headers.forEach((val) => {
      bufferOffset = std_msgs.msg.Header.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pose_projected]
    // Serialize the length for message field [pose_projected]
    bufferOffset = _serializer.uint32(obj.pose_projected.length, buffer, bufferOffset);
    obj.pose_projected.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pose_resampled]
    // Serialize the length for message field [pose_resampled]
    bufferOffset = _serializer.uint32(obj.pose_resampled.length, buffer, bufferOffset);
    obj.pose_resampled.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pose_flags]
    bufferOffset = _arraySerializer.uint32(obj.pose_flags, buffer, bufferOffset, null);
    // Serialize message field [channels]
    // Serialize the length for message field [channels]
    bufferOffset = _serializer.uint32(obj.channels.length, buffer, bufferOffset);
    obj.channels.forEach((val) => {
      bufferOffset = sensor_msgs.msg.ChannelFloat32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackMsg
    let len;
    let data = new TrackMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    // Deserialize array length for message field [pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pose_headers]
    // Deserialize array length for message field [pose_headers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_headers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_headers[i] = std_msgs.msg.Header.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pose_projected]
    // Deserialize array length for message field [pose_projected]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_projected = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_projected[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pose_resampled]
    // Deserialize array length for message field [pose_resampled]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_resampled = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_resampled[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pose_flags]
    data.pose_flags = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [channels]
    // Deserialize array length for message field [channels]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.channels = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.channels[i] = sensor_msgs.msg.ChannelFloat32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 56 * object.pose.length;
    object.pose_headers.forEach((val) => {
      length += std_msgs.msg.Header.getMessageSize(val);
    });
    length += 56 * object.pose_projected.length;
    length += 56 * object.pose_resampled.length;
    length += 4 * object.pose_flags.length;
    object.channels.forEach((val) => {
      length += sensor_msgs.msg.ChannelFloat32.getMessageSize(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'articulation_model_msgs/TrackMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f74375fd0f97f92e2767ab0a80c15590';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single kinematic trajectory
    #
    # This message contains a kinematic trajectory. The trajectory is specified
    # as a vector of 6D poses. An additional flag, track_type, indicates whether
    # the track is valid, and whether it includes orientation. The track id
    # can be used for automatic coloring in the RVIZ track plugin, and can be 
    # freely chosen by the client. 
    #
    # A model is fitting only from the trajectory stored in the pose[]-vector. 
    # Additional information may be associated to each pose using the channels
    # vector, with arbitrary # fields (e.g., to include applied/measured forces). 
    #
    # After model evaluation,
    # also the associated configurations of the object are stored in the channels,
    # named "q[0]".."q[DOF-1]", where DOF is the number of degrees of freedom.
    # Model evaluation also projects the poses in the pose vector onto the model,
    # and stores these ideal poses in the vector pose_projected. Further, during model
    # evaluation, a new set of (uniform) configurations over the valid configuration
    # range is sampled, and the result is stored in pose_resampled.
    # The vector pose_flags contains additional display flags for the poses in the
    # pose vector, for example, whether a pose is visible and/or
    # the end of a trajectory segment. At the moment, this is only used by the
    # prior_model_learner.
    #
    
    std_msgs/Header header                        # frame and timestamp
    int32 id                                # used-specified track id
    
    geometry_msgs/Pose[] pose               # sequence of poses, defining the observed trajectory
    std_msgs/Header[] pose_headers                   # Timestamp and frame for each pose (and pose_projected)
    geometry_msgs/Pose[] pose_projected     # sequence of poses, projected to the model 
                                            # (after model evaluation)
    geometry_msgs/Pose[] pose_resampled     # sequence of poses, re-sampled from the model in
                                            # the valid configuration range
    uint32[] pose_flags                     # bit-wise combination of POSE_VISIBLE and POSE_END_OF_SEGMENT
    
    uint32 POSE_VISIBLE=1
    uint32 POSE_END_OF_SEGMENT=2
    
    # Each channel should have the same number of elements as pose array, 
    # and the data in each channel should correspond 1:1 with each pose
    # possible channels: "width", "height", "rgb", ...
    sensor_msgs/ChannelFloat32[] channels       
    
    
    
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
    
    ================================================================================
    MSG: sensor_msgs/ChannelFloat32
    # This message is used by the PointCloud message to hold optional data
    # associated with each point in the cloud. The length of the values
    # array should be the same as the length of the points array in the
    # PointCloud, and each value should be associated with the corresponding
    # point.
    
    # Channel names in existing practice include:
    #   "u", "v" - row and column (respectively) in the left stereo image.
    #              This is opposite to usual conventions but remains for
    #              historical reasons. The newer PointCloud2 message has no
    #              such problem.
    #   "rgb" - For point clouds produced by color stereo cameras. uint8
    #           (R,G,B) values packed into the least significant 24 bits,
    #           in order.
    #   "intensity" - laser or pixel intensity.
    #   "distance"
    
    # The channel name should give semantics of the channel (e.g.
    # "intensity" instead of "value").
    string name
    
    # The values array should be 1-1 with the elements of the associated
    # PointCloud.
    float32[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = new Array(msg.pose.length);
      for (let i = 0; i < resolved.pose.length; ++i) {
        resolved.pose[i] = geometry_msgs.msg.Pose.Resolve(msg.pose[i]);
      }
    }
    else {
      resolved.pose = []
    }

    if (msg.pose_headers !== undefined) {
      resolved.pose_headers = new Array(msg.pose_headers.length);
      for (let i = 0; i < resolved.pose_headers.length; ++i) {
        resolved.pose_headers[i] = std_msgs.msg.Header.Resolve(msg.pose_headers[i]);
      }
    }
    else {
      resolved.pose_headers = []
    }

    if (msg.pose_projected !== undefined) {
      resolved.pose_projected = new Array(msg.pose_projected.length);
      for (let i = 0; i < resolved.pose_projected.length; ++i) {
        resolved.pose_projected[i] = geometry_msgs.msg.Pose.Resolve(msg.pose_projected[i]);
      }
    }
    else {
      resolved.pose_projected = []
    }

    if (msg.pose_resampled !== undefined) {
      resolved.pose_resampled = new Array(msg.pose_resampled.length);
      for (let i = 0; i < resolved.pose_resampled.length; ++i) {
        resolved.pose_resampled[i] = geometry_msgs.msg.Pose.Resolve(msg.pose_resampled[i]);
      }
    }
    else {
      resolved.pose_resampled = []
    }

    if (msg.pose_flags !== undefined) {
      resolved.pose_flags = msg.pose_flags;
    }
    else {
      resolved.pose_flags = []
    }

    if (msg.channels !== undefined) {
      resolved.channels = new Array(msg.channels.length);
      for (let i = 0; i < resolved.channels.length; ++i) {
        resolved.channels[i] = sensor_msgs.msg.ChannelFloat32.Resolve(msg.channels[i]);
      }
    }
    else {
      resolved.channels = []
    }

    return resolved;
    }
};

// Constants for message
TrackMsg.Constants = {
  POSE_VISIBLE: 1,
  POSE_END_OF_SEGMENT: 2,
}

module.exports = TrackMsg;
