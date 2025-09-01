;; Auto-generated. Do not edit!


(when (boundp 'auv_model::Sidescan)
  (if (not (find-package "AUV_MODEL"))
    (make-package "AUV_MODEL"))
  (shadow 'Sidescan (find-package "AUV_MODEL")))
(unless (find-package "AUV_MODEL::SIDESCAN")
  (make-package "AUV_MODEL::SIDESCAN"))

(in-package "ROS")
;;//! \htmlinclude Sidescan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass auv_model::Sidescan
  :super ros::object
  :slots (_header _type _time _frequency_id _gain _decimation _max_duration _port_channel _starboard_channel _extra_channel ))

(defmethod auv_model::Sidescan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:time __time) 0)
    ((:frequency_id __frequency_id) 0)
    ((:gain __gain) 0)
    ((:decimation __decimation) 0)
    ((:max_duration __max_duration) 0.0)
    ((:port_channel __port_channel) (make-array 0 :initial-element 0 :element-type :char))
    ((:starboard_channel __starboard_channel) (make-array 0 :initial-element 0 :element-type :char))
    ((:extra_channel __extra_channel) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _time (round __time))
   (setq _frequency_id (round __frequency_id))
   (setq _gain (round __gain))
   (setq _decimation (round __decimation))
   (setq _max_duration (float __max_duration))
   (setq _port_channel __port_channel)
   (setq _starboard_channel __starboard_channel)
   (setq _extra_channel __extra_channel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:frequency_id
   (&optional __frequency_id)
   (if __frequency_id (setq _frequency_id __frequency_id)) _frequency_id)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:decimation
   (&optional __decimation)
   (if __decimation (setq _decimation __decimation)) _decimation)
  (:max_duration
   (&optional __max_duration)
   (if __max_duration (setq _max_duration __max_duration)) _max_duration)
  (:port_channel
   (&optional __port_channel)
   (if __port_channel (setq _port_channel __port_channel)) _port_channel)
  (:starboard_channel
   (&optional __starboard_channel)
   (if __starboard_channel (setq _starboard_channel __starboard_channel)) _starboard_channel)
  (:extra_channel
   (&optional __extra_channel)
   (if __extra_channel (setq _extra_channel __extra_channel)) _extra_channel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; uint32 _time
    4
    ;; uint8 _frequency_id
    1
    ;; int16 _gain
    2
    ;; uint16 _decimation
    2
    ;; float32 _max_duration
    4
    ;; uint8[] _port_channel
    (* 1    (length _port_channel)) 4
    ;; uint8[] _starboard_channel
    (* 1    (length _starboard_channel)) 4
    ;; uint8[] _extra_channel
    (* 1    (length _extra_channel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint32 _time
       (write-long _time s)
     ;; uint8 _frequency_id
       (write-byte _frequency_id s)
     ;; int16 _gain
       (write-word _gain s)
     ;; uint16 _decimation
       (write-word _decimation s)
     ;; float32 _max_duration
       (sys::poke _max_duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8[] _port_channel
     (write-long (length _port_channel) s)
     (princ _port_channel s)
     ;; uint8[] _starboard_channel
     (write-long (length _starboard_channel) s)
     (princ _starboard_channel s)
     ;; uint8[] _extra_channel
     (write-long (length _extra_channel) s)
     (princ _extra_channel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _frequency_id
     (setq _frequency_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _gain
     (setq _gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _decimation
     (setq _decimation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _max_duration
     (setq _max_duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8[] _port_channel
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _port_channel (make-array n :element-type :char))
     (replace _port_channel buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _starboard_channel
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _starboard_channel (make-array n :element-type :char))
     (replace _starboard_channel buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _extra_channel
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _extra_channel (make-array n :element-type :char))
     (replace _extra_channel buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get auv_model::Sidescan :md5sum-) "11582401bb2ec522a6efe57254b1f054")
(setf (get auv_model::Sidescan :datatype-) "auv_model/Sidescan")
(setf (get auv_model::Sidescan :definition-)
      "std_msgs/Header header
uint8   type          # Packet Type, 0xE2 = Sonar 8 Bit
uint32  time          # Ping time   [100 us]
uint8   frequency_id  # Freq Id, currently 0x00
int16   gain
uint16  decimation
float32 max_duration  # Max travel time of outermost bins (s)
uint8[] port_channel
uint8[] starboard_channel
uint8[] extra_channel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :auv_model/Sidescan "11582401bb2ec522a6efe57254b1f054")


