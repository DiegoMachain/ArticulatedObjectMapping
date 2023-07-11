; Auto-generated. Do not edit!


(cl:in-package articulation_model_msgs-msg)


;//! \htmlinclude ModelMsg.msg.html

(cl:defclass <ModelMsg> (roslisp-msg-protocol:ros-message)
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
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (params
    :reader params
    :initarg :params
    :type (cl:vector articulation_model_msgs-msg:ParamMsg)
   :initform (cl:make-array 0 :element-type 'articulation_model_msgs-msg:ParamMsg :initial-element (cl:make-instance 'articulation_model_msgs-msg:ParamMsg)))
   (track
    :reader track
    :initarg :track
    :type articulation_model_msgs-msg:TrackMsg
    :initform (cl:make-instance 'articulation_model_msgs-msg:TrackMsg)))
)

(cl:defclass ModelMsg (<ModelMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModelMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModelMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name articulation_model_msgs-msg:<ModelMsg> is deprecated: use articulation_model_msgs-msg:ModelMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:header-val is deprecated.  Use articulation_model_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ModelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:id-val is deprecated.  Use articulation_model_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ModelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:name-val is deprecated.  Use articulation_model_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <ModelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:params-val is deprecated.  Use articulation_model_msgs-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <ModelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader articulation_model_msgs-msg:track-val is deprecated.  Use articulation_model_msgs-msg:track instead.")
  (track m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModelMsg>) ostream)
  "Serializes a message object of type '<ModelMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModelMsg>) istream)
  "Deserializes a message object of type '<ModelMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'articulation_model_msgs-msg:ParamMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModelMsg>)))
  "Returns string type for a message object of type '<ModelMsg>"
  "articulation_model_msgs/ModelMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelMsg)))
  "Returns string type for a message object of type 'ModelMsg"
  "articulation_model_msgs/ModelMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModelMsg>)))
  "Returns md5sum for a message object of type '<ModelMsg>"
  "d6fd23ca956a2c6fee31f2452ddba34d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModelMsg)))
  "Returns md5sum for a message object of type 'ModelMsg"
  "d6fd23ca956a2c6fee31f2452ddba34d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModelMsg>)))
  "Returns full string definition for message of type '<ModelMsg>"
  (cl:format cl:nil "# Single kinematic model~%#~%# A kinematic model is defined by its model class name, and a set of parameters. ~%# The client may additionally specify a model id, that can be used to colorize the~%# model when visualized using the RVIZ model display.~%# ~%# For a list of currently implemented models, see the documetation at~%# http://www.ros.org/wiki/articulation_models~%#~%#~%~%std_msgs/Header header                        # frame and timestamp~%~%int32 id                             # user specified model id~%string name                          # name of the model family (e.g. \"rotational\",~%                                     # \"prismatic\", \"pca-gp\", \"rigid\")~%articulation_model_msgs/ParamMsg[] params  # model parameters~%articulation_model_msgs/TrackMsg track     # trajectory from which the model is estimated, or~%                                     # that is evaluated using the model~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: articulation_model_msgs/ParamMsg~%# Single parameter passed to or from model fitting~%#~%# This mechanism allows to flexibly pass parameters to ~%# model fitting (and vice versa). Note that these parameters ~%# are model-specific: A client may supply additional~%# parameters to the model estimator, and, similarly, a estimator~%# may add the estimated model parameters to the model message.~%# When the model is then evaluated, for example to make predictions~%# or to compute the likelihood, the model class can then use~%# these parameters.~%#~%# A parameter has a name, a value, and a type. The type globally~%# indicates whether it is a prior parameter (prior to model fitting),~%# or a model parameter (found during model fitting, using a maximum-~%# likelihood estimator), or a cached evaluation (e.g., the likelihood~%# or the BIC are a typical \"side\"-product of model estimation, and~%# can therefore already be cached).~%#~%# For a list of currently used parameters, see the documentation at~%# http://www.ros.org/wiki/articulation_models~%#~%~%uint8 PRIOR=0   # indicates a prior model parameter ~%                # (e.g., \"sigma_position\")~%uint8 PARAM=1   # indicates a estimated model parameter ~%                # (e.g., \"rot_radius\", the estimated radius)~%uint8 EVAL=2    # indicates a cached evaluation of the model, given ~%                # the current trajectory~%                # (e.g., \"loglikelihood\", the log likelihood of the~%                # data, given the model and its parameters)~%~%string name     # name of the parameter~%float64 value   # value of the parameter~%uint8 type      # type of the parameter (PRIOR, PARAM, EVAL)~%~%~%================================================================================~%MSG: articulation_model_msgs/TrackMsg~%# Single kinematic trajectory~%#~%# This message contains a kinematic trajectory. The trajectory is specified~%# as a vector of 6D poses. An additional flag, track_type, indicates whether~%# the track is valid, and whether it includes orientation. The track id~%# can be used for automatic coloring in the RVIZ track plugin, and can be ~%# freely chosen by the client. ~%#~%# A model is fitting only from the trajectory stored in the pose[]-vector. ~%# Additional information may be associated to each pose using the channels~%# vector, with arbitrary # fields (e.g., to include applied/measured forces). ~%#~%# After model evaluation,~%# also the associated configurations of the object are stored in the channels,~%# named \"q[0]\"..\"q[DOF-1]\", where DOF is the number of degrees of freedom.~%# Model evaluation also projects the poses in the pose vector onto the model,~%# and stores these ideal poses in the vector pose_projected. Further, during model~%# evaluation, a new set of (uniform) configurations over the valid configuration~%# range is sampled, and the result is stored in pose_resampled.~%# The vector pose_flags contains additional display flags for the poses in the~%# pose vector, for example, whether a pose is visible and/or~%# the end of a trajectory segment. At the moment, this is only used by the~%# prior_model_learner.~%#~%~%std_msgs/Header header                        # frame and timestamp~%int32 id                                # used-specified track id~%~%geometry_msgs/Pose[] pose               # sequence of poses, defining the observed trajectory~%std_msgs/Header[] pose_headers                   # Timestamp and frame for each pose (and pose_projected)~%geometry_msgs/Pose[] pose_projected     # sequence of poses, projected to the model ~%                                        # (after model evaluation)~%geometry_msgs/Pose[] pose_resampled     # sequence of poses, re-sampled from the model in~%                                        # the valid configuration range~%uint32[] pose_flags                     # bit-wise combination of POSE_VISIBLE and POSE_END_OF_SEGMENT~%~%uint32 POSE_VISIBLE=1~%uint32 POSE_END_OF_SEGMENT=2~%~%# Each channel should have the same number of elements as pose array, ~%# and the data in each channel should correspond 1:1 with each pose~%# possible channels: \"width\", \"height\", \"rgb\", ...~%sensor_msgs/ChannelFloat32[] channels       ~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModelMsg)))
  "Returns full string definition for message of type 'ModelMsg"
  (cl:format cl:nil "# Single kinematic model~%#~%# A kinematic model is defined by its model class name, and a set of parameters. ~%# The client may additionally specify a model id, that can be used to colorize the~%# model when visualized using the RVIZ model display.~%# ~%# For a list of currently implemented models, see the documetation at~%# http://www.ros.org/wiki/articulation_models~%#~%#~%~%std_msgs/Header header                        # frame and timestamp~%~%int32 id                             # user specified model id~%string name                          # name of the model family (e.g. \"rotational\",~%                                     # \"prismatic\", \"pca-gp\", \"rigid\")~%articulation_model_msgs/ParamMsg[] params  # model parameters~%articulation_model_msgs/TrackMsg track     # trajectory from which the model is estimated, or~%                                     # that is evaluated using the model~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: articulation_model_msgs/ParamMsg~%# Single parameter passed to or from model fitting~%#~%# This mechanism allows to flexibly pass parameters to ~%# model fitting (and vice versa). Note that these parameters ~%# are model-specific: A client may supply additional~%# parameters to the model estimator, and, similarly, a estimator~%# may add the estimated model parameters to the model message.~%# When the model is then evaluated, for example to make predictions~%# or to compute the likelihood, the model class can then use~%# these parameters.~%#~%# A parameter has a name, a value, and a type. The type globally~%# indicates whether it is a prior parameter (prior to model fitting),~%# or a model parameter (found during model fitting, using a maximum-~%# likelihood estimator), or a cached evaluation (e.g., the likelihood~%# or the BIC are a typical \"side\"-product of model estimation, and~%# can therefore already be cached).~%#~%# For a list of currently used parameters, see the documentation at~%# http://www.ros.org/wiki/articulation_models~%#~%~%uint8 PRIOR=0   # indicates a prior model parameter ~%                # (e.g., \"sigma_position\")~%uint8 PARAM=1   # indicates a estimated model parameter ~%                # (e.g., \"rot_radius\", the estimated radius)~%uint8 EVAL=2    # indicates a cached evaluation of the model, given ~%                # the current trajectory~%                # (e.g., \"loglikelihood\", the log likelihood of the~%                # data, given the model and its parameters)~%~%string name     # name of the parameter~%float64 value   # value of the parameter~%uint8 type      # type of the parameter (PRIOR, PARAM, EVAL)~%~%~%================================================================================~%MSG: articulation_model_msgs/TrackMsg~%# Single kinematic trajectory~%#~%# This message contains a kinematic trajectory. The trajectory is specified~%# as a vector of 6D poses. An additional flag, track_type, indicates whether~%# the track is valid, and whether it includes orientation. The track id~%# can be used for automatic coloring in the RVIZ track plugin, and can be ~%# freely chosen by the client. ~%#~%# A model is fitting only from the trajectory stored in the pose[]-vector. ~%# Additional information may be associated to each pose using the channels~%# vector, with arbitrary # fields (e.g., to include applied/measured forces). ~%#~%# After model evaluation,~%# also the associated configurations of the object are stored in the channels,~%# named \"q[0]\"..\"q[DOF-1]\", where DOF is the number of degrees of freedom.~%# Model evaluation also projects the poses in the pose vector onto the model,~%# and stores these ideal poses in the vector pose_projected. Further, during model~%# evaluation, a new set of (uniform) configurations over the valid configuration~%# range is sampled, and the result is stored in pose_resampled.~%# The vector pose_flags contains additional display flags for the poses in the~%# pose vector, for example, whether a pose is visible and/or~%# the end of a trajectory segment. At the moment, this is only used by the~%# prior_model_learner.~%#~%~%std_msgs/Header header                        # frame and timestamp~%int32 id                                # used-specified track id~%~%geometry_msgs/Pose[] pose               # sequence of poses, defining the observed trajectory~%std_msgs/Header[] pose_headers                   # Timestamp and frame for each pose (and pose_projected)~%geometry_msgs/Pose[] pose_projected     # sequence of poses, projected to the model ~%                                        # (after model evaluation)~%geometry_msgs/Pose[] pose_resampled     # sequence of poses, re-sampled from the model in~%                                        # the valid configuration range~%uint32[] pose_flags                     # bit-wise combination of POSE_VISIBLE and POSE_END_OF_SEGMENT~%~%uint32 POSE_VISIBLE=1~%uint32 POSE_END_OF_SEGMENT=2~%~%# Each channel should have the same number of elements as pose array, ~%# and the data in each channel should correspond 1:1 with each pose~%# possible channels: \"width\", \"height\", \"rgb\", ...~%sensor_msgs/ChannelFloat32[] channels       ~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModelMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModelMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ModelMsg
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':params (params msg))
    (cl:cons ':track (track msg))
))
