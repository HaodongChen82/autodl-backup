;; Auto-generated. Do not edit!


(when (boundp 'slam_msgs::Resample)
  (if (not (find-package "SLAM_MSGS"))
    (make-package "SLAM_MSGS"))
  (shadow 'Resample (find-package "SLAM_MSGS")))
(unless (find-package "SLAM_MSGS::RESAMPLE")
  (make-package "SLAM_MSGS::RESAMPLE"))
(unless (find-package "SLAM_MSGS::RESAMPLEREQUEST")
  (make-package "SLAM_MSGS::RESAMPLEREQUEST"))
(unless (find-package "SLAM_MSGS::RESAMPLERESPONSE")
  (make-package "SLAM_MSGS::RESAMPLERESPONSE"))

(in-package "ROS")





(defclass slam_msgs::ResampleRequest
  :super ros::object
  :slots (_p_id ))

(defmethod slam_msgs::ResampleRequest
  (:init
   (&key
    ((:p_id __p_id) 0)
    )
   (send-super :init)
   (setq _p_id (round __p_id))
   self)
  (:p_id
   (&optional __p_id)
   (if __p_id (setq _p_id __p_id)) _p_id)
  (:serialization-length
   ()
   (+
    ;; int32 _p_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _p_id
       (write-long _p_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _p_id
     (setq _p_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass slam_msgs::ResampleResponse
  :super ros::object
  :slots (_done ))

(defmethod slam_msgs::ResampleResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass slam_msgs::Resample
  :super ros::object
  :slots ())

(setf (get slam_msgs::Resample :md5sum-) "1f80de1749f85c5c1e825039a9d7a2e4")
(setf (get slam_msgs::Resample :datatype-) "slam_msgs/Resample")
(setf (get slam_msgs::Resample :request) slam_msgs::ResampleRequest)
(setf (get slam_msgs::Resample :response) slam_msgs::ResampleResponse)

(defmethod slam_msgs::ResampleRequest
  (:response () (instance slam_msgs::ResampleResponse :init)))

(setf (get slam_msgs::ResampleRequest :md5sum-) "1f80de1749f85c5c1e825039a9d7a2e4")
(setf (get slam_msgs::ResampleRequest :datatype-) "slam_msgs/ResampleRequest")
(setf (get slam_msgs::ResampleRequest :definition-)
      "int32 p_id
---
bool done


")

(setf (get slam_msgs::ResampleResponse :md5sum-) "1f80de1749f85c5c1e825039a9d7a2e4")
(setf (get slam_msgs::ResampleResponse :datatype-) "slam_msgs/ResampleResponse")
(setf (get slam_msgs::ResampleResponse :definition-)
      "int32 p_id
---
bool done


")



(provide :slam_msgs/Resample "1f80de1749f85c5c1e825039a9d7a2e4")


