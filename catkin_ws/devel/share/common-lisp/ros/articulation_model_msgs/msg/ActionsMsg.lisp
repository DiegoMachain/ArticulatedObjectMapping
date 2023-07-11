; Auto-generated. Do not edit!


(cl:in-package articulation_model_msgs-msg)


;//! \htmlinclude ActionsMsg.msg.html

(cl:defclass <ActionsMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass ActionsMsg (<ActionsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name articulation_model_msgs-msg:<ActionsMsg> is deprecated: use articulation_model_msgs-msg:ActionsMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActionsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:header-val is deprecated.  Use articulation_model_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <ActionsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:actions-val is deprecated.  Use articulation_model_msgs-msg:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionsMsg>) ostream)
  "Serializes a message object of type '<ActionsMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionsMsg>) istream)
  "Deserializes a message object of type '<ActionsMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionsMsg>)))
  "Returns string type for a message object of type '<ActionsMsg>"
  "articulation_model_msgs/ActionsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionsMsg)))
  "Returns string type for a message object of type 'ActionsMsg"
  "articulation_model_msgs/ActionsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionsMsg>)))
  "Returns md5sum for a message object of type '<ActionsMsg>"
  "edfe36b729cee3e9f2d41537b0b17fd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionsMsg)))
  "Returns md5sum for a message object of type 'ActionsMsg"
  "edfe36b729cee3e9f2d41537b0b17fd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionsMsg>)))
  "Returns full string definition for message of type '<ActionsMsg>"
  (cl:format cl:nil "#goal definition~%std_msgs/Header header                        # frame and timestamp~%~%geometry_msgs/Pose[] actions~%~%#---~%#result definition~%#int32[] sequence~%#---~%#feedback~%#int32[] sequence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionsMsg)))
  "Returns full string definition for message of type 'ActionsMsg"
  (cl:format cl:nil "#goal definition~%std_msgs/Header header                        # frame and timestamp~%~%geometry_msgs/Pose[] actions~%~%#---~%#result definition~%#int32[] sequence~%#---~%#feedback~%#int32[] sequence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionsMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionsMsg
    (cl:cons ':header (header msg))
    (cl:cons ':actions (actions msg))
))
