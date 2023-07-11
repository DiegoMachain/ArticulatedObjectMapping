;; Auto-generated. Do not edit!


(when (boundp 'robotics_demo::ObjectPoseService)
  (if (not (find-package "ROBOTICS_DEMO"))
    (make-package "ROBOTICS_DEMO"))
  (shadow 'ObjectPoseService (find-package "ROBOTICS_DEMO")))
(unless (find-package "ROBOTICS_DEMO::OBJECTPOSESERVICE")
  (make-package "ROBOTICS_DEMO::OBJECTPOSESERVICE"))
(unless (find-package "ROBOTICS_DEMO::OBJECTPOSESERVICEREQUEST")
  (make-package "ROBOTICS_DEMO::OBJECTPOSESERVICEREQUEST"))
(unless (find-package "ROBOTICS_DEMO::OBJECTPOSESERVICERESPONSE")
  (make-package "ROBOTICS_DEMO::OBJECTPOSESERVICERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotics_demo::ObjectPoseServiceRequest
  :super ros::object
  :slots (_object_name ))

(defmethod robotics_demo::ObjectPoseServiceRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotics_demo::ObjectPoseServiceResponse
  :super ros::object
  :slots (_object_pose ))

(defmethod robotics_demo::ObjectPoseServiceResponse
  (:init
   (&key
    ((:object_pose __object_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _object_pose __object_pose)
   self)
  (:object_pose
   (&rest __object_pose)
   (if (keywordp (car __object_pose))
       (send* _object_pose __object_pose)
     (progn
       (if __object_pose (setq _object_pose (car __object_pose)))
       _object_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _object_pose
    (send _object_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _object_pose
       (send _object_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _object_pose
     (send _object_pose :deserialize buf ptr-) (incf ptr- (send _object_pose :serialization-length))
   ;;
   self)
  )

(defclass robotics_demo::ObjectPoseService
  :super ros::object
  :slots ())

(setf (get robotics_demo::ObjectPoseService :md5sum-) "31d8db4c34c65d79af3330e45c30d801")
(setf (get robotics_demo::ObjectPoseService :datatype-) "robotics_demo/ObjectPoseService")
(setf (get robotics_demo::ObjectPoseService :request) robotics_demo::ObjectPoseServiceRequest)
(setf (get robotics_demo::ObjectPoseService :response) robotics_demo::ObjectPoseServiceResponse)

(defmethod robotics_demo::ObjectPoseServiceRequest
  (:response () (instance robotics_demo::ObjectPoseServiceResponse :init)))

(setf (get robotics_demo::ObjectPoseServiceRequest :md5sum-) "31d8db4c34c65d79af3330e45c30d801")
(setf (get robotics_demo::ObjectPoseServiceRequest :datatype-) "robotics_demo/ObjectPoseServiceRequest")
(setf (get robotics_demo::ObjectPoseServiceRequest :definition-)
      "string object_name
---
geometry_msgs/Pose object_pose


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

(setf (get robotics_demo::ObjectPoseServiceResponse :md5sum-) "31d8db4c34c65d79af3330e45c30d801")
(setf (get robotics_demo::ObjectPoseServiceResponse :datatype-) "robotics_demo/ObjectPoseServiceResponse")
(setf (get robotics_demo::ObjectPoseServiceResponse :definition-)
      "string object_name
---
geometry_msgs/Pose object_pose


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



(provide :robotics_demo/ObjectPoseService "31d8db4c34c65d79af3330e45c30d801")


