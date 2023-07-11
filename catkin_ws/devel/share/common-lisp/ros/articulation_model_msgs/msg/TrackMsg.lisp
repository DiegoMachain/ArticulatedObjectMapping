; Auto-generated. Do not edit!


(cl:in-package articulation_model_msgs-msg)


;//! \htmlinclude TrackMsg.msg.html

(cl:defclass <TrackMsg> (roslisp-msg-protocol:ros-message)
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
   (pose
    :reader pose
    :initarg :pose
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (pose_headers
    :reader pose_headers
    :initarg :pose_headers
    :type (cl:vector std_msgs-msg:Header)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Header :initial-element (cl:make-instance 'std_msgs-msg:Header)))
   (pose_projected
    :reader pose_projected
    :initarg :pose_projected
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (pose_resampled
    :reader pose_resampled
    :initarg :pose_resampled
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (pose_flags
    :reader pose_flags
    :initarg :pose_flags
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector sensor_msgs-msg:ChannelFloat32)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:ChannelFloat32 :initial-element (cl:make-instance 'sensor_msgs-msg:ChannelFloat32))))
)

(cl:defclass TrackMsg (<TrackMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name articulation_model_msgs-msg:<TrackMsg> is deprecated: use articulation_model_msgs-msg:TrackMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:header-val is deprecated.  Use articulation_model_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:id-val is deprecated.  Use articulation_model_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:pose-val is deprecated.  Use articulation_model_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'pose_headers-val :lambda-list '(m))
(cl:defmethod pose_headers-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:pose_headers-val is deprecated.  Use articulation_model_msgs-msg:pose_headers instead.")
  (pose_headers m))

(cl:ensure-generic-function 'pose_projected-val :lambda-list '(m))
(cl:defmethod pose_projected-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:pose_projected-val is deprecated.  Use articulation_model_msgs-msg:pose_projected instead.")
  (pose_projected m))

(cl:ensure-generic-function 'pose_resampled-val :lambda-list '(m))
(cl:defmethod pose_resampled-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:pose_resampled-val is deprecated.  Use articulation_model_msgs-msg:pose_resampled instead.")
  (pose_resampled m))

(cl:ensure-generic-function 'pose_flags-val :lambda-list '(m))
(cl:defmethod pose_flags-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:pose_flags-val is deprecated.  Use articulation_model_msgs-msg:pose_flags instead.")
  (pose_flags m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <TrackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:channels-val is deprecated.  Use articulation_model_msgs-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackMsg>)))
    "Constants for message type '<TrackMsg>"
  '((:POSE_VISIBLE . 1)
    (:POSE_END_OF_SEGMENT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackMsg)))
    "Constants for message type 'TrackMsg"
  '((:POSE_VISIBLE . 1)
    (:POSE_END_OF_SEGMENT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackMsg>) ostream)
  "Serializes a message object of type '<TrackMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_headers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_headers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_projected))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_projected))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_resampled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_resampled))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'pose_flags))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackMsg>) istream)
  "Deserializes a message object of type '<TrackMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_headers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_headers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Header))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_projected) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_projected)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_resampled) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_resampled)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:ChannelFloat32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackMsg>)))
  "Returns string type for a message object of type '<TrackMsg>"
  "articulation_model_msgs/TrackMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackMsg)))
  "Returns string type for a message object of type 'TrackMsg"
  "articulation_model_msgs/TrackMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackMsg>)))
  "Returns md5sum for a message object of type '<TrackMsg>"
  "f74375fd0f97f92e2767ab0a80c15590")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackMsg)))
  "Returns md5sum for a message object of type 'TrackMsg"
  "f74375fd0f97f92e2767ab0a80c15590")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackMsg>)))
  "Returns full string definition for message of type '<TrackMsg>"
  (cl:format cl:nil "# Single kinematic trajectory~%#~%# This message contains a kinematic trajectory. The trajectory is specified~%# as a vector of 6D poses. An additional flag, track_type, indicates whether~%# the track is valid, and whether it includes orientation. The track id~%# can be used for automatic coloring in the RVIZ track plugin, and can be ~%# freely chosen by the client. ~%#~%# A model is fitting only from the trajectory stored in the pose[]-vector. ~%# Additional information may be associated to each pose using the channels~%# vector, with arbitrary # fields (e.g., to include applied/measured forces). ~%#~%# After model evaluation,~%# also the associated configurations of the object are stored in the channels,~%# named \"q[0]\"..\"q[DOF-1]\", where DOF is the number of degrees of freedom.~%# Model evaluation also projects the poses in the pose vector onto the model,~%# and stores these ideal poses in the vector pose_projected. Further, during model~%# evaluation, a new set of (uniform) configurations over the valid configuration~%# range is sampled, and the result is stored in pose_resampled.~%# The vector pose_flags contains additional display flags for the poses in the~%# pose vector, for example, whether a pose is visible and/or~%# the end of a trajectory segment. At the moment, this is only used by the~%# prior_model_learner.~%#~%~%std_msgs/Header header                        # frame and timestamp~%int32 id                                # used-specified track id~%~%geometry_msgs/Pose[] pose               # sequence of poses, defining the observed trajectory~%std_msgs/Header[] pose_headers                   # Timestamp and frame for each pose (and pose_projected)~%geometry_msgs/Pose[] pose_projected     # sequence of poses, projected to the model ~%                                        # (after model evaluation)~%geometry_msgs/Pose[] pose_resampled     # sequence of poses, re-sampled from the model in~%                                        # the valid configuration range~%uint32[] pose_flags                     # bit-wise combination of POSE_VISIBLE and POSE_END_OF_SEGMENT~%~%uint32 POSE_VISIBLE=1~%uint32 POSE_END_OF_SEGMENT=2~%~%# Each channel should have the same number of elements as pose array, ~%# and the data in each channel should correspond 1:1 with each pose~%# possible channels: \"width\", \"height\", \"rgb\", ...~%sensor_msgs/ChannelFloat32[] channels       ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackMsg)))
  "Returns full string definition for message of type 'TrackMsg"
  (cl:format cl:nil "# Single kinematic trajectory~%#~%# This message contains a kinematic trajectory. The trajectory is specified~%# as a vector of 6D poses. An additional flag, track_type, indicates whether~%# the track is valid, and whether it includes orientation. The track id~%# can be used for automatic coloring in the RVIZ track plugin, and can be ~%# freely chosen by the client. ~%#~%# A model is fitting only from the trajectory stored in the pose[]-vector. ~%# Additional information may be associated to each pose using the channels~%# vector, with arbitrary # fields (e.g., to include applied/measured forces). ~%#~%# After model evaluation,~%# also the associated configurations of the object are stored in the channels,~%# named \"q[0]\"..\"q[DOF-1]\", where DOF is the number of degrees of freedom.~%# Model evaluation also projects the poses in the pose vector onto the model,~%# and stores these ideal poses in the vector pose_projected. Further, during model~%# evaluation, a new set of (uniform) configurations over the valid configuration~%# range is sampled, and the result is stored in pose_resampled.~%# The vector pose_flags contains additional display flags for the poses in the~%# pose vector, for example, whether a pose is visible and/or~%# the end of a trajectory segment. At the moment, this is only used by the~%# prior_model_learner.~%#~%~%std_msgs/Header header                        # frame and timestamp~%int32 id                                # used-specified track id~%~%geometry_msgs/Pose[] pose               # sequence of poses, defining the observed trajectory~%std_msgs/Header[] pose_headers                   # Timestamp and frame for each pose (and pose_projected)~%geometry_msgs/Pose[] pose_projected     # sequence of poses, projected to the model ~%                                        # (after model evaluation)~%geometry_msgs/Pose[] pose_resampled     # sequence of poses, re-sampled from the model in~%                                        # the valid configuration range~%uint32[] pose_flags                     # bit-wise combination of POSE_VISIBLE and POSE_END_OF_SEGMENT~%~%uint32 POSE_VISIBLE=1~%uint32 POSE_END_OF_SEGMENT=2~%~%# Each channel should have the same number of elements as pose array, ~%# and the data in each channel should correspond 1:1 with each pose~%# possible channels: \"width\", \"height\", \"rgb\", ...~%sensor_msgs/ChannelFloat32[] channels       ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_headers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_projected) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_resampled) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackMsg
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':pose_headers (pose_headers msg))
    (cl:cons ':pose_projected (pose_projected msg))
    (cl:cons ':pose_resampled (pose_resampled msg))
    (cl:cons ':pose_flags (pose_flags msg))
    (cl:cons ':channels (channels msg))
))
