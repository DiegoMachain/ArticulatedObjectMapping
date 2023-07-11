;; Auto-generated. Do not edit!


(when (boundp 'articulation_model_msgs::TrackMsg)
  (if (not (find-package "ARTICULATION_MODEL_MSGS"))
    (make-package "ARTICULATION_MODEL_MSGS"))
  (shadow 'TrackMsg (find-package "ARTICULATION_MODEL_MSGS")))
(unless (find-package "ARTICULATION_MODEL_MSGS::TRACKMSG")
  (make-package "ARTICULATION_MODEL_MSGS::TRACKMSG"))

(in-package "ROS")
;;//! \htmlinclude TrackMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POSE_VISIBLE*" (find-package "ARTICULATION_MODEL_MSGS::TRACKMSG"))
(shadow '*POSE_VISIBLE* (find-package "ARTICULATION_MODEL_MSGS::TRACKMSG"))
(defconstant articulation_model_msgs::TrackMsg::*POSE_VISIBLE* 1)
(intern "*POSE_END_OF_SEGMENT*" (find-package "ARTICULATION_MODEL_MSGS::TRACKMSG"))
(shadow '*POSE_END_OF_SEGMENT* (find-package "ARTICULATION_MODEL_MSGS::TRACKMSG"))
(defconstant articulation_model_msgs::TrackMsg::*POSE_END_OF_SEGMENT* 2)
(defclass articulation_model_msgs::TrackMsg
  :super ros::object
  :slots (_header _id _pose _pose_headers _pose_projected _pose_resampled _pose_flags _channels ))

(defmethod articulation_model_msgs::TrackMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:pose_headers __pose_headers) (let (r) (dotimes (i 0) (push (instance std_msgs::Header :init) r)) r))
    ((:pose_projected __pose_projected) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:pose_resampled __pose_resampled) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:pose_flags __pose_flags) (make-array 0 :initial-element 0 :element-type :integer))
    ((:channels __channels) (let (r) (dotimes (i 0) (push (instance sensor_msgs::ChannelFloat32 :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _pose __pose)
   (setq _pose_headers __pose_headers)
   (setq _pose_projected __pose_projected)
   (setq _pose_resampled __pose_resampled)
   (setq _pose_flags __pose_flags)
   (setq _channels __channels)
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
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:pose_headers
   (&rest __pose_headers)
   (if (keywordp (car __pose_headers))
       (send* _pose_headers __pose_headers)
     (progn
       (if __pose_headers (setq _pose_headers (car __pose_headers)))
       _pose_headers)))
  (:pose_projected
   (&rest __pose_projected)
   (if (keywordp (car __pose_projected))
       (send* _pose_projected __pose_projected)
     (progn
       (if __pose_projected (setq _pose_projected (car __pose_projected)))
       _pose_projected)))
  (:pose_resampled
   (&rest __pose_resampled)
   (if (keywordp (car __pose_resampled))
       (send* _pose_resampled __pose_resampled)
     (progn
       (if __pose_resampled (setq _pose_resampled (car __pose_resampled)))
       _pose_resampled)))
  (:pose_flags
   (&optional __pose_flags)
   (if __pose_flags (setq _pose_flags __pose_flags)) _pose_flags)
  (:channels
   (&rest __channels)
   (if (keywordp (car __channels))
       (send* _channels __channels)
     (progn
       (if __channels (setq _channels (car __channels)))
       _channels)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; geometry_msgs/Pose[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; std_msgs/Header[] _pose_headers
    (apply #'+ (send-all _pose_headers :serialization-length)) 4
    ;; geometry_msgs/Pose[] _pose_projected
    (apply #'+ (send-all _pose_projected :serialization-length)) 4
    ;; geometry_msgs/Pose[] _pose_resampled
    (apply #'+ (send-all _pose_resampled :serialization-length)) 4
    ;; uint32[] _pose_flags
    (* 4    (length _pose_flags)) 4
    ;; sensor_msgs/ChannelFloat32[] _channels
    (apply #'+ (send-all _channels :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Pose[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; std_msgs/Header[] _pose_headers
     (write-long (length _pose_headers) s)
     (dolist (elem _pose_headers)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _pose_projected
     (write-long (length _pose_projected) s)
     (dolist (elem _pose_projected)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _pose_resampled
     (write-long (length _pose_resampled) s)
     (dolist (elem _pose_resampled)
       (send elem :serialize s)
       )
     ;; uint32[] _pose_flags
     (write-long (length _pose_flags) s)
     (dotimes (i (length _pose_flags))
       (write-long (elt _pose_flags i) s)
       )
     ;; sensor_msgs/ChannelFloat32[] _channels
     (write-long (length _channels) s)
     (dolist (elem _channels)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Header[] _pose_headers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_headers (let (r) (dotimes (i n) (push (instance std_msgs::Header :init) r)) r))
     (dolist (elem- _pose_headers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _pose_projected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_projected (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose_projected)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _pose_resampled
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_resampled (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose_resampled)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _pose_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_flags (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pose_flags i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; sensor_msgs/ChannelFloat32[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (let (r) (dotimes (i n) (push (instance sensor_msgs::ChannelFloat32 :init) r)) r))
     (dolist (elem- _channels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get articulation_model_msgs::TrackMsg :md5sum-) "f74375fd0f97f92e2767ab0a80c15590")
(setf (get articulation_model_msgs::TrackMsg :datatype-) "articulation_model_msgs/TrackMsg")
(setf (get articulation_model_msgs::TrackMsg :definition-)
      "# Single kinematic trajectory
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



(provide :articulation_model_msgs/TrackMsg "f74375fd0f97f92e2767ab0a80c15590")


