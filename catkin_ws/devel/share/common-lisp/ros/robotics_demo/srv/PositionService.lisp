; Auto-generated. Do not edit!


(cl:in-package robotics_demo-srv)


;//! \htmlinclude PositionService-request.msg.html

(cl:defclass <PositionService-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type robotics_demo-msg:PosRot
    :initform (cl:make-instance 'robotics_demo-msg:PosRot)))
)

(cl:defclass PositionService-request (<PositionService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_demo-srv:<PositionService-request> is deprecated: use robotics_demo-srv:PositionService-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <PositionService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-srv:input-val is deprecated.  Use robotics_demo-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionService-request>) ostream)
  "Serializes a message object of type '<PositionService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionService-request>) istream)
  "Deserializes a message object of type '<PositionService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionService-request>)))
  "Returns string type for a service object of type '<PositionService-request>"
  "robotics_demo/PositionServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionService-request)))
  "Returns string type for a service object of type 'PositionService-request"
  "robotics_demo/PositionServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionService-request>)))
  "Returns md5sum for a message object of type '<PositionService-request>"
  "b2629d4cbee41789622cf2931b4df30e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionService-request)))
  "Returns md5sum for a message object of type 'PositionService-request"
  "b2629d4cbee41789622cf2931b4df30e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionService-request>)))
  "Returns full string definition for message of type '<PositionService-request>"
  (cl:format cl:nil "PosRot input~%~%================================================================================~%MSG: robotics_demo/PosRot~%float32 pos_x~%float32 pos_y~%float32 pos_z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 rot_w~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionService-request)))
  "Returns full string definition for message of type 'PositionService-request"
  (cl:format cl:nil "PosRot input~%~%================================================================================~%MSG: robotics_demo/PosRot~%float32 pos_x~%float32 pos_y~%float32 pos_z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 rot_w~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionService-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude PositionService-response.msg.html

(cl:defclass <PositionService-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type robotics_demo-msg:PosRot
    :initform (cl:make-instance 'robotics_demo-msg:PosRot)))
)

(cl:defclass PositionService-response (<PositionService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_demo-srv:<PositionService-response> is deprecated: use robotics_demo-srv:PositionService-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <PositionService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-srv:output-val is deprecated.  Use robotics_demo-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionService-response>) ostream)
  "Serializes a message object of type '<PositionService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionService-response>) istream)
  "Deserializes a message object of type '<PositionService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionService-response>)))
  "Returns string type for a service object of type '<PositionService-response>"
  "robotics_demo/PositionServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionService-response)))
  "Returns string type for a service object of type 'PositionService-response"
  "robotics_demo/PositionServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionService-response>)))
  "Returns md5sum for a message object of type '<PositionService-response>"
  "b2629d4cbee41789622cf2931b4df30e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionService-response)))
  "Returns md5sum for a message object of type 'PositionService-response"
  "b2629d4cbee41789622cf2931b4df30e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionService-response>)))
  "Returns full string definition for message of type '<PositionService-response>"
  (cl:format cl:nil "PosRot output~%~%================================================================================~%MSG: robotics_demo/PosRot~%float32 pos_x~%float32 pos_y~%float32 pos_z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 rot_w~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionService-response)))
  "Returns full string definition for message of type 'PositionService-response"
  (cl:format cl:nil "PosRot output~%~%================================================================================~%MSG: robotics_demo/PosRot~%float32 pos_x~%float32 pos_y~%float32 pos_z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 rot_w~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionService-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionService)))
  'PositionService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionService)))
  'PositionService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionService)))
  "Returns string type for a service object of type '<PositionService>"
  "robotics_demo/PositionService")