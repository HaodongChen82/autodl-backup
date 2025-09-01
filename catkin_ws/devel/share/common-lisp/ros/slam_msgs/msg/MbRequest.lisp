; Auto-generated. Do not edit!


(cl:in-package slam_msgs-msg)


;//! \htmlinclude MbRequest.msg.html

(cl:defclass <MbRequest> (roslisp-msg-protocol:ros-message)
  ((particle_id
    :reader particle_id
    :initarg :particle_id
    :type cl:integer
    :initform 0)
   (mb_size
    :reader mb_size
    :initarg :mb_size
    :type cl:integer
    :initform 0))
)

(cl:defclass MbRequest (<MbRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MbRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MbRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msgs-msg:<MbRequest> is deprecated: use slam_msgs-msg:MbRequest instead.")))

(cl:ensure-generic-function 'particle_id-val :lambda-list '(m))
(cl:defmethod particle_id-val ((m <MbRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:particle_id-val is deprecated.  Use slam_msgs-msg:particle_id instead.")
  (particle_id m))

(cl:ensure-generic-function 'mb_size-val :lambda-list '(m))
(cl:defmethod mb_size-val ((m <MbRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:mb_size-val is deprecated.  Use slam_msgs-msg:mb_size instead.")
  (mb_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MbRequest>) ostream)
  "Serializes a message object of type '<MbRequest>"
  (cl:let* ((signed (cl:slot-value msg 'particle_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mb_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MbRequest>) istream)
  "Deserializes a message object of type '<MbRequest>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'particle_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mb_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MbRequest>)))
  "Returns string type for a message object of type '<MbRequest>"
  "slam_msgs/MbRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MbRequest)))
  "Returns string type for a message object of type 'MbRequest"
  "slam_msgs/MbRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MbRequest>)))
  "Returns md5sum for a message object of type '<MbRequest>"
  "0a6053386fd7d0a43b8fbe57150c1836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MbRequest)))
  "Returns md5sum for a message object of type 'MbRequest"
  "0a6053386fd7d0a43b8fbe57150c1836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MbRequest>)))
  "Returns full string definition for message of type '<MbRequest>"
  (cl:format cl:nil "int32 particle_id~%int32 mb_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MbRequest)))
  "Returns full string definition for message of type 'MbRequest"
  (cl:format cl:nil "int32 particle_id~%int32 mb_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MbRequest>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MbRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'MbRequest
    (cl:cons ':particle_id (particle_id msg))
    (cl:cons ':mb_size (mb_size msg))
))
