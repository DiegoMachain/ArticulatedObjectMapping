; Auto-generated. Do not edit!


(cl:in-package articulation_model_msgs-msg)


;//! \htmlinclude ParamMsg.msg.html

(cl:defclass <ParamMsg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParamMsg (<ParamMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name articulation_model_msgs-msg:<ParamMsg> is deprecated: use articulation_model_msgs-msg:ParamMsg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ParamMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:name-val is deprecated.  Use articulation_model_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParamMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:value-val is deprecated.  Use articulation_model_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParamMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:type-val is deprecated.  Use articulation_model_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParamMsg>)))
    "Constants for message type '<ParamMsg>"
  '((:PRIOR . 0)
    (:PARAM . 1)
    (:EVAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParamMsg)))
    "Constants for message type 'ParamMsg"
  '((:PRIOR . 0)
    (:PARAM . 1)
    (:EVAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamMsg>) ostream)
  "Serializes a message object of type '<ParamMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamMsg>) istream)
  "Deserializes a message object of type '<ParamMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamMsg>)))
  "Returns string type for a message object of type '<ParamMsg>"
  "articulation_model_msgs/ParamMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamMsg)))
  "Returns string type for a message object of type 'ParamMsg"
  "articulation_model_msgs/ParamMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamMsg>)))
  "Returns md5sum for a message object of type '<ParamMsg>"
  "6b116ef40eb37aa2f03e65c1a95f8bf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamMsg)))
  "Returns md5sum for a message object of type 'ParamMsg"
  "6b116ef40eb37aa2f03e65c1a95f8bf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamMsg>)))
  "Returns full string definition for message of type '<ParamMsg>"
  (cl:format cl:nil "# Single parameter passed to or from model fitting~%#~%# This mechanism allows to flexibly pass parameters to ~%# model fitting (and vice versa). Note that these parameters ~%# are model-specific: A client may supply additional~%# parameters to the model estimator, and, similarly, a estimator~%# may add the estimated model parameters to the model message.~%# When the model is then evaluated, for example to make predictions~%# or to compute the likelihood, the model class can then use~%# these parameters.~%#~%# A parameter has a name, a value, and a type. The type globally~%# indicates whether it is a prior parameter (prior to model fitting),~%# or a model parameter (found during model fitting, using a maximum-~%# likelihood estimator), or a cached evaluation (e.g., the likelihood~%# or the BIC are a typical \"side\"-product of model estimation, and~%# can therefore already be cached).~%#~%# For a list of currently used parameters, see the documentation at~%# http://www.ros.org/wiki/articulation_models~%#~%~%uint8 PRIOR=0   # indicates a prior model parameter ~%                # (e.g., \"sigma_position\")~%uint8 PARAM=1   # indicates a estimated model parameter ~%                # (e.g., \"rot_radius\", the estimated radius)~%uint8 EVAL=2    # indicates a cached evaluation of the model, given ~%                # the current trajectory~%                # (e.g., \"loglikelihood\", the log likelihood of the~%                # data, given the model and its parameters)~%~%string name     # name of the parameter~%float64 value   # value of the parameter~%uint8 type      # type of the parameter (PRIOR, PARAM, EVAL)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamMsg)))
  "Returns full string definition for message of type 'ParamMsg"
  (cl:format cl:nil "# Single parameter passed to or from model fitting~%#~%# This mechanism allows to flexibly pass parameters to ~%# model fitting (and vice versa). Note that these parameters ~%# are model-specific: A client may supply additional~%# parameters to the model estimator, and, similarly, a estimator~%# may add the estimated model parameters to the model message.~%# When the model is then evaluated, for example to make predictions~%# or to compute the likelihood, the model class can then use~%# these parameters.~%#~%# A parameter has a name, a value, and a type. The type globally~%# indicates whether it is a prior parameter (prior to model fitting),~%# or a model parameter (found during model fitting, using a maximum-~%# likelihood estimator), or a cached evaluation (e.g., the likelihood~%# or the BIC are a typical \"side\"-product of model estimation, and~%# can therefore already be cached).~%#~%# For a list of currently used parameters, see the documentation at~%# http://www.ros.org/wiki/articulation_models~%#~%~%uint8 PRIOR=0   # indicates a prior model parameter ~%                # (e.g., \"sigma_position\")~%uint8 PARAM=1   # indicates a estimated model parameter ~%                # (e.g., \"rot_radius\", the estimated radius)~%uint8 EVAL=2    # indicates a cached evaluation of the model, given ~%                # the current trajectory~%                # (e.g., \"loglikelihood\", the log likelihood of the~%                # data, given the model and its parameters)~%~%string name     # name of the parameter~%float64 value   # value of the parameter~%uint8 type      # type of the parameter (PRIOR, PARAM, EVAL)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamMsg
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
    (cl:cons ':type (type msg))
))
