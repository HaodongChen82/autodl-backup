
(cl:in-package :asdf)

(defsystem "slam_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Resample" :depends-on ("_package_Resample"))
    (:file "_package_Resample" :depends-on ("_package"))
  ))