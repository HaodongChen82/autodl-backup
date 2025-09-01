;; Auto-generated. Do not edit!


(when (boundp 'slam_msgs::MbRequest)
  (if (not (find-package "SLAM_MSGS"))
    (make-package "SLAM_MSGS"))
  (shadow 'MbRequest (find-package "SLAM_MSGS")))
(unless (find-package "SLAM_MSGS::MBREQUEST")
  (make-package "SLAM_MSGS::MBREQUEST"))

(in-package "ROS")
;;//! \htmlinclude MbRequest.msg.html


(defclass slam_msgs::MbRequest
  :super ros::object
  :slots (_particle_id _mb_size ))

(defmethod slam_msgs::MbRequest
  (:init
   (&key
    ((:particle_id __particle_id) 0)
    ((:mb_size __mb_size) 0)
    )
   (send-super :init)
   (setq _particle_id (round __particle_id))
   (setq _mb_size (round __mb_size))
   self)
  (:particle_id
   (&optional __particle_id)
   (if __particle_id (setq _particle_id __particle_id)) _particle_id)
  (:mb_size
   (&optional __mb_size)
   (if __mb_size (setq _mb_size __mb_size)) _mb_size)
  (:serialization-length
   ()
   (+
    ;; int32 _particle_id
    4
    ;; int32 _mb_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _particle_id
       (write-long _particle_id s)
     ;; int32 _mb_size
       (write-long _mb_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _particle_id
     (setq _particle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mb_size
     (setq _mb_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get slam_msgs::MbRequest :md5sum-) "0a6053386fd7d0a43b8fbe57150c1836")
(setf (get slam_msgs::MbRequest :datatype-) "slam_msgs/MbRequest")
(setf (get slam_msgs::MbRequest :definition-)
      "int32 particle_id
int32 mb_size

")



(provide :slam_msgs/MbRequest "0a6053386fd7d0a43b8fbe57150c1836")


