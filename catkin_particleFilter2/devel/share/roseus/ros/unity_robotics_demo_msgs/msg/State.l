;; Auto-generated. Do not edit!


(when (boundp 'unity_robotics_demo_msgs::State)
  (if (not (find-package "UNITY_ROBOTICS_DEMO_MSGS"))
    (make-package "UNITY_ROBOTICS_DEMO_MSGS"))
  (shadow 'State (find-package "UNITY_ROBOTICS_DEMO_MSGS")))
(unless (find-package "UNITY_ROBOTICS_DEMO_MSGS::STATE")
  (make-package "UNITY_ROBOTICS_DEMO_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass unity_robotics_demo_msgs::State
  :super ros::object
  :slots (_state ))

(defmethod unity_robotics_demo_msgs::State
  (:init
   (&key
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _state (float __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get unity_robotics_demo_msgs::State :md5sum-) "3afad6888115551b1adffec816d76963")
(setf (get unity_robotics_demo_msgs::State :datatype-) "unity_robotics_demo_msgs/State")
(setf (get unity_robotics_demo_msgs::State :definition-)
      "float32 state

")



(provide :unity_robotics_demo_msgs/State "3afad6888115551b1adffec816d76963")


