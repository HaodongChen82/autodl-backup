; Auto-generated. Do not edit!


(cl:in-package auv_model-msg)


;//! \htmlinclude Sidescan.msg.html

(cl:defclass <Sidescan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (frequency_id
    :reader frequency_id
    :initarg :frequency_id
    :type cl:fixnum
    :initform 0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:fixnum
    :initform 0)
   (decimation
    :reader decimation
    :initarg :decimation
    :type cl:fixnum
    :initform 0)
   (max_duration
    :reader max_duration
    :initarg :max_duration
    :type cl:float
    :initform 0.0)
   (port_channel
    :reader port_channel
    :initarg :port_channel
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (starboard_channel
    :reader starboard_channel
    :initarg :starboard_channel
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (extra_channel
    :reader extra_channel
    :initarg :extra_channel
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Sidescan (<Sidescan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sidescan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sidescan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_model-msg:<Sidescan> is deprecated: use auv_model-msg:Sidescan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:header-val is deprecated.  Use auv_model-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:type-val is deprecated.  Use auv_model-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:time-val is deprecated.  Use auv_model-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'frequency_id-val :lambda-list '(m))
(cl:defmethod frequency_id-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:frequency_id-val is deprecated.  Use auv_model-msg:frequency_id instead.")
  (frequency_id m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:gain-val is deprecated.  Use auv_model-msg:gain instead.")
  (gain m))

(cl:ensure-generic-function 'decimation-val :lambda-list '(m))
(cl:defmethod decimation-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:decimation-val is deprecated.  Use auv_model-msg:decimation instead.")
  (decimation m))

(cl:ensure-generic-function 'max_duration-val :lambda-list '(m))
(cl:defmethod max_duration-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:max_duration-val is deprecated.  Use auv_model-msg:max_duration instead.")
  (max_duration m))

(cl:ensure-generic-function 'port_channel-val :lambda-list '(m))
(cl:defmethod port_channel-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:port_channel-val is deprecated.  Use auv_model-msg:port_channel instead.")
  (port_channel m))

(cl:ensure-generic-function 'starboard_channel-val :lambda-list '(m))
(cl:defmethod starboard_channel-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:starboard_channel-val is deprecated.  Use auv_model-msg:starboard_channel instead.")
  (starboard_channel m))

(cl:ensure-generic-function 'extra_channel-val :lambda-list '(m))
(cl:defmethod extra_channel-val ((m <Sidescan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_model-msg:extra_channel-val is deprecated.  Use auv_model-msg:extra_channel instead.")
  (extra_channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sidescan>) ostream)
  "Serializes a message object of type '<Sidescan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gain)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'decimation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'decimation)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'port_channel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'port_channel))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'starboard_channel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'starboard_channel))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'extra_channel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'extra_channel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sidescan>) istream)
  "Deserializes a message object of type '<Sidescan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gain) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'decimation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'decimation)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_duration) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'port_channel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'port_channel)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'starboard_channel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'starboard_channel)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'extra_channel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'extra_channel)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sidescan>)))
  "Returns string type for a message object of type '<Sidescan>"
  "auv_model/Sidescan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sidescan)))
  "Returns string type for a message object of type 'Sidescan"
  "auv_model/Sidescan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sidescan>)))
  "Returns md5sum for a message object of type '<Sidescan>"
  "11582401bb2ec522a6efe57254b1f054")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sidescan)))
  "Returns md5sum for a message object of type 'Sidescan"
  "11582401bb2ec522a6efe57254b1f054")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sidescan>)))
  "Returns full string definition for message of type '<Sidescan>"
  (cl:format cl:nil "std_msgs/Header header~%uint8   type          # Packet Type, 0xE2 = Sonar 8 Bit~%uint32  time          # Ping time   [100 us]~%uint8   frequency_id  # Freq Id, currently 0x00~%int16   gain~%uint16  decimation~%float32 max_duration  # Max travel time of outermost bins (s)~%uint8[] port_channel~%uint8[] starboard_channel~%uint8[] extra_channel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sidescan)))
  "Returns full string definition for message of type 'Sidescan"
  (cl:format cl:nil "std_msgs/Header header~%uint8   type          # Packet Type, 0xE2 = Sonar 8 Bit~%uint32  time          # Ping time   [100 us]~%uint8   frequency_id  # Freq Id, currently 0x00~%int16   gain~%uint16  decimation~%float32 max_duration  # Max travel time of outermost bins (s)~%uint8[] port_channel~%uint8[] starboard_channel~%uint8[] extra_channel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sidescan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     2
     2
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'port_channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'starboard_channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'extra_channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sidescan>))
  "Converts a ROS message object to a list"
  (cl:list 'Sidescan
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':time (time msg))
    (cl:cons ':frequency_id (frequency_id msg))
    (cl:cons ':gain (gain msg))
    (cl:cons ':decimation (decimation msg))
    (cl:cons ':max_duration (max_duration msg))
    (cl:cons ':port_channel (port_channel msg))
    (cl:cons ':starboard_channel (starboard_channel msg))
    (cl:cons ':extra_channel (extra_channel msg))
))
