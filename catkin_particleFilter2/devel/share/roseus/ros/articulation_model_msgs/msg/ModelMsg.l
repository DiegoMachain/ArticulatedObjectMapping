;; Auto-generated. Do not edit!


(when (boundp 'articulation_model_msgs::ModelMsg)
  (if (not (find-package "ARTICULATION_MODEL_MSGS"))
    (make-package "ARTICULATION_MODEL_MSGS"))
  (shadow 'ModelMsg (find-package "ARTICULATION_MODEL_MSGS")))
(unless (find-package "ARTICULATION_MODEL_MSGS::MODELMSG")
  (make-package "ARTICULATION_MODEL_MSGS::MODELMSG"))

(in-package "ROS")
;;//! \htmlinclude ModelMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass articulation_model_msgs::ModelMsg
  :super ros::object
  :slots (_header _id _name _params _track ))

(defmethod articulation_model_msgs::ModelMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:name __name) "")
    ((:params __params) (let (r) (dotimes (i 0) (push (instance articulation_model_msgs::ParamMsg :init) r)) r))
    ((:track __track) (instance articulation_model_msgs::TrackMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _params __params)
   (setq _track __track)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:track
   (&rest __track)
   (if (keywordp (car __track))
       (send* _track __track)
     (progn
       (if __track (setq _track (car __track)))
       _track)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; articulation_model_msgs/ParamMsg[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ;; articulation_model_msgs/TrackMsg _track
    (send _track :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; articulation_model_msgs/ParamMsg[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;; articulation_model_msgs/TrackMsg _track
       (send _track :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; articulation_model_msgs/ParamMsg[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance articulation_model_msgs::ParamMsg :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; articulation_model_msgs/TrackMsg _track
     (send _track :deserialize buf ptr-) (incf ptr- (send _track :serialization-length))
   ;;
   self)
  )

(setf (get articulation_model_msgs::ModelMsg :md5sum-) "d6fd23ca956a2c6fee31f2452ddba34d")
(setf (get articulation_model_msgs::ModelMsg :datatype-) "articulation_model_msgs/ModelMsg")
(setf (get articulation_model_msgs::ModelMsg :definition-)
      "# Single kinematic model
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
string name                          # name of the model family (e.g. \"rotational\",
                                     # \"prismatic\", \"pca-gp\", \"rigid\")
articulation_model_msgs/ParamMsg[] params  # model parameters
articulation_model_msgs/TrackMsg track     # trajectory from which the model is estimated, or
                                     # that is evaluated using the model

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
# or the BIC are a typical \"side\"-product of model estimation, and
# can therefore already be cached).
#
# For a list of currently used parameters, see the documentation at
# http://www.ros.org/wiki/articulation_models
#

uint8 PRIOR=0   # indicates a prior model parameter 
                # (e.g., \"sigma_position\")
uint8 PARAM=1   # indicates a estimated model parameter 
                # (e.g., \"rot_radius\", the estimated radius)
uint8 EVAL=2    # indicates a cached evaluation of the model, given 
                # the current trajectory
                # (e.g., \"loglikelihood\", the log likelihood of the
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
# named \"q[0]\"..\"q[DOF-1]\", where DOF is the number of degrees of freedom.
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
# possible channels: \"width\", \"height\", \"rgb\", ...
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
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values

")



(provide :articulation_model_msgs/ModelMsg "d6fd23ca956a2c6fee31f2452ddba34d")


