
(cl:in-package :asdf)

(defsystem "pr2_lfd_utils-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WMData" :depends-on ("_package_WMData"))
    (:file "_package_WMData" :depends-on ("_package"))
    (:file "WMObject" :depends-on ("_package_WMObject"))
    (:file "_package_WMObject" :depends-on ("_package"))
  ))