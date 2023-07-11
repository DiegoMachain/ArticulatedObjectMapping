;; Auto-generated. Do not edit!


(when (boundp 'pr2_lfd_utils::WMData)
  (if (not (find-package "PR2_LFD_UTILS"))
    (make-package "PR2_LFD_UTILS"))
  (shadow 'WMData (find-package "PR2_LFD_UTILS")))
(unless (find-package "PR2_LFD_UTILS::WMDATA")
  (make-package "PR2_LFD_UTILS::WMDATA"))

(in-package "ROS")
;;//! \htmlinclude WMData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pr2_lfd_utils::WMData
  :super ros::object
  :slots (_header _objects ))

(defmethod pr2_lfd_utils::WMData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance pr2_lfd_utils::WMObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pr2_lfd_utils/WMObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pr2_lfd_utils/WMObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pr2_lfd_utils/WMObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance pr2_lfd_utils::WMObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pr2_lfd_utils::WMData :md5sum-) "68dcda98ef9b16735859eaf0e9474409")
(setf (get pr2_lfd_utils::WMData :datatype-) "pr2_lfd_utils/WMData")
(setf (get pr2_lfd_utils::WMData :definition-)
      "Header header
WMObject[] objects

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
MSG: pr2_lfd_utils/WMObject
Header header
uint32 id
bool currently_visible
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :pr2_lfd_utils/WMData "68dcda98ef9b16735859eaf0e9474409")


