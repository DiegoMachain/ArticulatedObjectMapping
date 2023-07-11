; Auto-generated. Do not edit!


(cl:in-package robotics_demo-msg)


;//! \htmlinclude PosRot.msg.html

(cl:defclass <PosRot> (roslisp-msg-protocol:ros-message)
  ((pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:float
    :initform 0.0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:float
    :initform 0.0)
   (pos_z
    :reader pos_z
    :initarg :pos_z
    :type cl:float
    :initform 0.0)
   (rot_x
    :reader rot_x
    :initarg :rot_x
    :type cl:float
    :initform 0.0)
   (rot_y
    :reader rot_y
    :initarg :rot_y
    :type cl:float
    :initform 0.0)
   (rot_z
    :reader rot_z
    :initarg :rot_z
    :type cl:float
    :initform 0.0)
   (rot_w
    :reader rot_w
    :initarg :rot_w
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass PosRot (<PosRot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosRot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosRot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics_demo-msg:<PosRot> is deprecated: use robotics_demo-msg:PosRot instead.")))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:pos_x-val is deprecated.  Use robotics_demo-msg:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:pos_y-val is deprecated.  Use robotics_demo-msg:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'pos_z-val :lambda-list '(m))
(cl:defmethod pos_z-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:pos_z-val is deprecated.  Use robotics_demo-msg:pos_z instead.")
  (pos_z m))

(cl:ensure-generic-function 'rot_x-val :lambda-list '(m))
(cl:defmethod rot_x-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:rot_x-val is deprecated.  Use robotics_demo-msg:rot_x instead.")
  (rot_x m))

(cl:ensure-generic-function 'rot_y-val :lambda-list '(m))
(cl:defmethod rot_y-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:rot_y-val is deprecated.  Use robotics_demo-msg:rot_y instead.")
  (rot_y m))

(cl:ensure-generic-function 'rot_z-val :lambda-list '(m))
(cl:defmethod rot_z-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:rot_z-val is deprecated.  Use robotics_demo-msg:rot_z instead.")
  (rot_z m))

(cl:ensure-generic-function 'rot_w-val :lambda-list '(m))
(cl:defmethod rot_w-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:rot_w-val is deprecated.  Use robotics_demo-msg:rot_w instead.")
  (rot_w m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PosRot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics_demo-msg:id-val is deprecated.  Use robotics_demo-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosRot>) ostream)
  "Serializes a message object of type '<PosRot>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosRot>) istream)
  "Deserializes a message object of type '<PosRot>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosRot>)))
  "Returns string type for a message object of type '<PosRot>"
  "robotics_demo/PosRot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosRot)))
  "Returns string type for a message object of type 'PosRot"
  "robotics_demo/PosRot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosRot>)))
  "Returns md5sum for a message object of type '<PosRot>"
  "0968f4d088425ed87ed90ca4c25a2ab6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosRot)))
  "Returns md5sum for a message object of type 'PosRot"
  "0968f4d088425ed87ed90ca4c25a2ab6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosRot>)))
  "Returns full string definition for message of type '<PosRot>"
  (cl:format cl:nil "float32 pos_x~%float32 pos_y~%float32 pos_z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 rot_w~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosRot)))
  "Returns full string definition for message of type 'PosRot"
  (cl:format cl:nil "float32 pos_x~%float32 pos_y~%float32 pos_z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 rot_w~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosRot>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosRot>))
  "Converts a ROS message object to a list"
  (cl:list 'PosRot
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':pos_z (pos_z msg))
    (cl:cons ':rot_x (rot_x msg))
    (cl:cons ':rot_y (rot_y msg))
    (cl:cons ':rot_z (rot_z msg))
    (cl:cons ':rot_w (rot_w msg))
    (cl:cons ':id (id msg))
))
