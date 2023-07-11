;; Auto-generated. Do not edit!


(when (boundp 'articulation_model_msgs::ParamMsg)
  (if (not (find-package "ARTICULATION_MODEL_MSGS"))
    (make-package "ARTICULATION_MODEL_MSGS"))
  (shadow 'ParamMsg (find-package "ARTICULATION_MODEL_MSGS")))
(unless (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG")
  (make-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))

(in-package "ROS")
;;//! \htmlinclude ParamMsg.msg.html


(intern "*PRIOR*" (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))
(shadow '*PRIOR* (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))
(defconstant articulation_model_msgs::ParamMsg::*PRIOR* 0)
(intern "*PARAM*" (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))
(shadow '*PARAM* (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))
(defconstant articulation_model_msgs::ParamMsg::*PARAM* 1)
(intern "*EVAL*" (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))
(shadow '*EVAL* (find-package "ARTICULATION_MODEL_MSGS::PARAMMSG"))
(defconstant articulation_model_msgs::ParamMsg::*EVAL* 2)
(defclass articulation_model_msgs::ParamMsg
  :super ros::object
  :slots (_name _value _type ))

(defmethod articulation_model_msgs::ParamMsg
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (float __value))
   (setq _type (round __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _value
    8
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get articulation_model_msgs::ParamMsg :md5sum-) "6b116ef40eb37aa2f03e65c1a95f8bf1")
(setf (get articulation_model_msgs::ParamMsg :datatype-) "articulation_model_msgs/ParamMsg")
(setf (get articulation_model_msgs::ParamMsg :definition-)
      "# Single parameter passed to or from model fitting
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


")



(provide :articulation_model_msgs/ParamMsg "6b116ef40eb37aa2f03e65c1a95f8bf1")


