;; Auto-generated. Do not edit!


(when (boundp 'robotics_demo::PositionService)
  (if (not (find-package "ROBOTICS_DEMO"))
    (make-package "ROBOTICS_DEMO"))
  (shadow 'PositionService (find-package "ROBOTICS_DEMO")))
(unless (find-package "ROBOTICS_DEMO::POSITIONSERVICE")
  (make-package "ROBOTICS_DEMO::POSITIONSERVICE"))
(unless (find-package "ROBOTICS_DEMO::POSITIONSERVICEREQUEST")
  (make-package "ROBOTICS_DEMO::POSITIONSERVICEREQUEST"))
(unless (find-package "ROBOTICS_DEMO::POSITIONSERVICERESPONSE")
  (make-package "ROBOTICS_DEMO::POSITIONSERVICERESPONSE"))

(in-package "ROS")





(defclass robotics_demo::PositionServiceRequest
  :super ros::object
  :slots (_input ))

(defmethod robotics_demo::PositionServiceRequest
  (:init
   (&key
    ((:input __input) (instance robotics_demo::PosRot :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; robotics_demo/PosRot _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotics_demo/PosRot _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotics_demo/PosRot _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass robotics_demo::PositionServiceResponse
  :super ros::object
  :slots (_output ))

(defmethod robotics_demo::PositionServiceResponse
  (:init
   (&key
    ((:output __output) (instance robotics_demo::PosRot :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; robotics_demo/PosRot _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotics_demo/PosRot _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotics_demo/PosRot _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass robotics_demo::PositionService
  :super ros::object
  :slots ())

(setf (get robotics_demo::PositionService :md5sum-) "b2629d4cbee41789622cf2931b4df30e")
(setf (get robotics_demo::PositionService :datatype-) "robotics_demo/PositionService")
(setf (get robotics_demo::PositionService :request) robotics_demo::PositionServiceRequest)
(setf (get robotics_demo::PositionService :response) robotics_demo::PositionServiceResponse)

(defmethod robotics_demo::PositionServiceRequest
  (:response () (instance robotics_demo::PositionServiceResponse :init)))

(setf (get robotics_demo::PositionServiceRequest :md5sum-) "b2629d4cbee41789622cf2931b4df30e")
(setf (get robotics_demo::PositionServiceRequest :datatype-) "robotics_demo/PositionServiceRequest")
(setf (get robotics_demo::PositionServiceRequest :definition-)
      "PosRot input

================================================================================
MSG: robotics_demo/PosRot
float32 pos_x
float32 pos_y
float32 pos_z
float32 rot_x
float32 rot_y
float32 rot_z
float32 rot_w
string id
---
PosRot output

================================================================================
MSG: robotics_demo/PosRot
float32 pos_x
float32 pos_y
float32 pos_z
float32 rot_x
float32 rot_y
float32 rot_z
float32 rot_w
string id
")

(setf (get robotics_demo::PositionServiceResponse :md5sum-) "b2629d4cbee41789622cf2931b4df30e")
(setf (get robotics_demo::PositionServiceResponse :datatype-) "robotics_demo/PositionServiceResponse")
(setf (get robotics_demo::PositionServiceResponse :definition-)
      "PosRot input

================================================================================
MSG: robotics_demo/PosRot
float32 pos_x
float32 pos_y
float32 pos_z
float32 rot_x
float32 rot_y
float32 rot_z
float32 rot_w
string id
---
PosRot output

================================================================================
MSG: robotics_demo/PosRot
float32 pos_x
float32 pos_y
float32 pos_z
float32 rot_x
float32 rot_y
float32 rot_z
float32 rot_w
string id
")



(provide :robotics_demo/PositionService "b2629d4cbee41789622cf2931b4df30e")


