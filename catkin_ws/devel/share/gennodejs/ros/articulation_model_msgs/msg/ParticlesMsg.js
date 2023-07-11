// Auto-generated. Do not edit!

// (in-package articulation_model_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModelMsg = require('./ModelMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ParticlesMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.particles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('particles')) {
        this.particles = initObj.particles
      }
      else {
        this.particles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParticlesMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [particles]
    // Serialize the length for message field [particles]
    bufferOffset = _serializer.uint32(obj.particles.length, buffer, bufferOffset);
    obj.particles.forEach((val) => {
      bufferOffset = ModelMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParticlesMsg
    let len;
    let data = new ParticlesMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [particles]
    // Deserialize array length for message field [particles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.particles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.particles[i] = ModelMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.particles.forEach((val) => {
      length += ModelMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'articulation_model_msgs/ParticlesMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52af14e2f898092846e1c146600c0fb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vector of single kinematic model
    #
    # A kinematic model is defined by its model class name, and a set of parameters. 
    # The client may additionally specify a model id, that can be used to colorize the
    # model when visualized using the RVIZ model display.
    # 
    # For a list of currently implemented models, see the documetation at
    # http://www.ros.org/wiki/articulation_models
    #
    #
    
    std_msgs/Header header                        # frame and timestamp
    
    articulation_model_msgs/ModelMsg[] particles  # model parameters
    
    
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
    MSG: articulation_model_msgs/ModelMsg
    # Single kinematic model
    #
    # A kinematic model is defined by its model class name, and a set of parameters. 
    # The client may additionally specify a model id, that can be used to colorize the
    # model when visualized using the RVIZ model display.
    # 
    # For a list of currently implemented models, see the documetation at
    # http://www.ros.org/wiki/articulation_models
    #
    #
    
    std_msgs/Header header                        # frame and timestamp
    
    int32 id                             # user specified model id
    string name                          # name of the model family (e.g. "rotational",
                                         # "prismatic", "pca-gp", "rigid")
    articulation_model_msgs/ParamMsg[] params  # model parameters
    articulation_model_msgs/TrackMsg track     # trajectory from which the model is estimated, or
                                         # that is evaluated using the model
    
    ================================================================================
    MSG: articulation_model_msgs/ParamMsg
    # Single parameter passed to or from model fitting
    #
    # This mechanism allows to flexibly pass parameters to 
    # model fitting (and vice versa). Note that these parameters 
    # are model-specific: A client may supply additional
    # parameters to the model estimator, and, similarly, a estimator
    # may add the estimated model parameters to the model message.
    # When the model is then evaluated, for example to make predictions
    # or to compute the likelihood, the model class can then use
    # these parameters.
    #
    # A parameter has a name, a value, and a type. The type globally
    # indicates whether it is a prior parameter (prior to model fitting),
    # or a model parameter (found during model fitting, using a maximum-
    # likelihood estimator), or a cached evaluation (e.g., the likelihood
    # or the BIC are a typical "side"-product of model estimation, and
    # can therefore already be cached).
    #
    # For a list of currently used parameters, see the documentation at
    # http://www.ros.org/wiki/articulation_models
    #
    
    uint8 PRIOR=0   # indicates a prior model parameter 
                    # (e.g., "sigma_position")
    uint8 PARAM=1   # indicates a estimated model parameter 
                    # (e.g., "rot_radius", the estimated radius)
    uint8 EVAL=2    # indicates a cached evaluation of the model, given 
                    # the current trajectory
                    # (e.g., "loglikelihood", the log likelihood of the
                    # data, given the model and its parameters)
    
    string name     # name of the parameter
    float64 value   # value of the parameter
    uint8 type      # type of the parameter (PRIOR, PARAM, EVAL)
    
    
    ================================================================================
    MSG: articulation_model_msgs/TrackMsg
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
    const resolved = new ParticlesMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.particles !== undefined) {
      resolved.particles = new Array(msg.particles.length);
      for (let i = 0; i < resolved.particles.length; ++i) {
        resolved.particles[i] = ModelMsg.Resolve(msg.particles[i]);
      }
    }
    else {
      resolved.particles = []
    }

    return resolved;
    }
};

module.exports = ParticlesMsg;
