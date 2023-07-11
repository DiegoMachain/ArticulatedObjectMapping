;; Auto-generated. Do not edit!


(when (boundp 'articulation_model_msgs::ActionsMsg)
  (if (not (find-package "ARTICULATION_MODEL_MSGS"))
    (make-package "ARTICULATION_MODEL_MSGS"))
  (shadow 'ActionsMsg (find-package "ARTICULATION_MODEL_MSGS")))
(unless (find-package "ARTICULATION_MODEL_MSGS::ACTIONSMSG")
  (make-package "ARTICULATION_MODEL_MSGS::ACTIONSMSG"))

(in-package "ROS")
;;//! \htmlinclude ActionsMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass articulation_model_msgs::ActionsMsg
  :super ros::object
  :slots (_header _actions ))

(defmethod articulation_model_msgs::ActionsMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:actions __actions) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _actions __actions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get articulation_model_msgs::ActionsMsg :md5sum-) "edfe36b729cee3e9f2d41537b0b17fd2")
(setf (get articulation_model_msgs::ActionsMsg :datatype-) "articulation_model_msgs/ActionsMsg")
(setf (get articulation_model_msgs::ActionsMsg :definition-)
      "#goal definition
std_msgs/Header header                        # frame and timestamp

geometry_msgs/Pose[] actions

#---
#result definition
#int32[] sequence
#---
#feedback
#int32[] sequence

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

")



(provide :articulation_model_msgs/ActionsMsg "edfe36b729cee3e9f2d41537b0b17fd2")


