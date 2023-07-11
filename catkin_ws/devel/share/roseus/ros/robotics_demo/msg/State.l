;; Auto-generated. Do not edit!


(when (boundp 'robotics_demo::State)
  (if (not (find-package "ROBOTICS_DEMO"))
    (make-package "ROBOTICS_DEMO"))
  (shadow 'State (find-package "ROBOTICS_DEMO")))
(unless (find-package "ROBOTICS_DEMO::STATE")
  (make-package "ROBOTICS_DEMO::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass robotics_demo::State
  :super ros::object
  :slots (_state ))

(defmethod robotics_demo::State
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

(setf (get robotics_demo::State :md5sum-) "3afad6888115551b1adffec816d76963")
(setf (get robotics_demo::State :datatype-) "robotics_demo/State")
(setf (get robotics_demo::State :definition-)
      "float32 state

")



(provide :robotics_demo/State "3afad6888115551b1adffec816d76963")


