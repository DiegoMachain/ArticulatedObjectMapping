// Auto-generated. Do not edit!

// (in-package articulation_model_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParamMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.value = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamMsg
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamMsg
    let len;
    let data = new ParamMsg(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'articulation_model_msgs/ParamMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b116ef40eb37aa2f03e65c1a95f8bf1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamMsg(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
ParamMsg.Constants = {
  PRIOR: 0,
  PARAM: 1,
  EVAL: 2,
}

module.exports = ParamMsg;
