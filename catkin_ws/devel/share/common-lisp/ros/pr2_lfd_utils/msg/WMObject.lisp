; Auto-generated. Do not edit!


(cl:in-package pr2_lfd_utils-msg)


;//! \htmlinclude WMObject.msg.html

(cl:defclass <WMObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (currently_visible
    :reader currently_visible
    :initarg :currently_visible
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass WMObject (<WMObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WMObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WMObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_lfd_utils-msg:<WMObject> is deprecated: use pr2_lfd_utils-msg:WMObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WMObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_lfd_utils-msg:header-val is deprecated.  Use pr2_lfd_utils-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WMObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_lfd_utils-msg:id-val is deprecated.  Use pr2_lfd_utils-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'currently_visible-val :lambda-list '(m))
(cl:defmethod currently_visible-val ((m <WMObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_lfd_utils-msg:currently_visible-val is deprecated.  Use pr2_lfd_utils-msg:currently_visible instead.")
  (currently_visible m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <WMObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_lfd_utils-msg:pose-val is deprecated.  Use pr2_lfd_utils-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WMObject>) ostream)
  "Serializes a message object of type '<WMObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'currently_visible) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WMObject>) istream)
  "Deserializes a message object of type '<WMObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'currently_visible) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WMObject>)))
  "Returns string type for a message object of type '<WMObject>"
  "pr2_lfd_utils/WMObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WMObject)))
  "Returns string type for a message object of type 'WMObject"
  "pr2_lfd_utils/WMObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WMObject>)))
  "Returns md5sum for a message object of type '<WMObject>"
  "32c98177cb26741b99f0e28637640d56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WMObject)))
  "Returns md5sum for a message object of type 'WMObject"
  "32c98177cb26741b99f0e28637640d56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WMObject>)))
  "Returns full string definition for message of type '<WMObject>"
  (cl:format cl:nil "Header header~%uint32 id~%bool currently_visible~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WMObject)))
  "Returns full string definition for message of type 'WMObject"
  (cl:format cl:nil "Header header~%uint32 id~%bool currently_visible~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WMObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WMObject>))
  "Converts a ROS message object to a list"
  (cl:list 'WMObject
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':currently_visible (currently_visible msg))
    (cl:cons ':pose (pose msg))
))
