; Auto-generated. Do not edit!


(cl:in-package pr2_lfd_utils-msg)


;//! \htmlinclude WMData.msg.html

(cl:defclass <WMData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector pr2_lfd_utils-msg:WMObject)
   :initform (cl:make-array 0 :element-type 'pr2_lfd_utils-msg:WMObject :initial-element (cl:make-instance 'pr2_lfd_utils-msg:WMObject))))
)

(cl:defclass WMData (<WMData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WMData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WMData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_lfd_utils-msg:<WMData> is deprecated: use pr2_lfd_utils-msg:WMData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_lfd_utils-msg:header-val is deprecated.  Use pr2_lfd_utils-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <WMData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_lfd_utils-msg:objects-val is deprecated.  Use pr2_lfd_utils-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WMData>) ostream)
  "Serializes a message object of type '<WMData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WMData>) istream)
  "Deserializes a message object of type '<WMData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pr2_lfd_utils-msg:WMObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WMData>)))
  "Returns string type for a message object of type '<WMData>"
  "pr2_lfd_utils/WMData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WMData)))
  "Returns string type for a message object of type 'WMData"
  "pr2_lfd_utils/WMData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WMData>)))
  "Returns md5sum for a message object of type '<WMData>"
  "68dcda98ef9b16735859eaf0e9474409")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WMData)))
  "Returns md5sum for a message object of type 'WMData"
  "68dcda98ef9b16735859eaf0e9474409")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WMData>)))
  "Returns full string definition for message of type '<WMData>"
  (cl:format cl:nil "Header header~%WMObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pr2_lfd_utils/WMObject~%Header header~%uint32 id~%bool currently_visible~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WMData)))
  "Returns full string definition for message of type 'WMData"
  (cl:format cl:nil "Header header~%WMObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pr2_lfd_utils/WMObject~%Header header~%uint32 id~%bool currently_visible~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WMData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WMData>))
  "Converts a ROS message object to a list"
  (cl:list 'WMData
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
