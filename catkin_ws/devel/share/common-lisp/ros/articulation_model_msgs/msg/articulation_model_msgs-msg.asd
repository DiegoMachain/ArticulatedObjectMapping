
(cl:in-package :asdf)

(defsystem "articulation_model_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActionsMsg" :depends-on ("_package_ActionsMsg"))
    (:file "_package_ActionsMsg" :depends-on ("_package"))
    (:file "ModelMsg" :depends-on ("_package_ModelMsg"))
    (:file "_package_ModelMsg" :depends-on ("_package"))
    (:file "ParamMsg" :depends-on ("_package_ParamMsg"))
    (:file "_package_ParamMsg" :depends-on ("_package"))
    (:file "ParticlesMsg" :depends-on ("_package_ParticlesMsg"))
    (:file "_package_ParticlesMsg" :depends-on ("_package"))
    (:file "TrackMsg" :depends-on ("_package_TrackMsg"))
    (:file "_package_TrackMsg" :depends-on ("_package"))
  ))