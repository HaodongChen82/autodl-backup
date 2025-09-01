; Auto-generated. Do not edit!


(cl:in-package slam_msgs-srv)


;//! \htmlinclude Resample-request.msg.html

(cl:defclass <Resample-request> (roslisp-msg-protocol:ros-message)
  ((p_id
    :reader p_id
    :initarg :p_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Resample-request (<Resample-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Resample-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Resample-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msgs-srv:<Resample-request> is deprecated: use slam_msgs-srv:Resample-request instead.")))

(cl:ensure-generic-function 'p_id-val :lambda-list '(m))
(cl:defmethod p_id-val ((m <Resample-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-srv:p_id-val is deprecated.  Use slam_msgs-srv:p_id instead.")
  (p_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Resample-request>) ostream)
  "Serializes a message object of type '<Resample-request>"
  (cl:let* ((signed (cl:slot-value msg 'p_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Resample-request>) istream)
  "Deserializes a message object of type '<Resample-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Resample-request>)))
  "Returns string type for a service object of type '<Resample-request>"
  "slam_msgs/ResampleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Resample-request)))
  "Returns string type for a service object of type 'Resample-request"
  "slam_msgs/ResampleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Resample-request>)))
  "Returns md5sum for a message object of type '<Resample-request>"
  "1f80de1749f85c5c1e825039a9d7a2e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Resample-request)))
  "Returns md5sum for a message object of type 'Resample-request"
  "1f80de1749f85c5c1e825039a9d7a2e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Resample-request>)))
  "Returns full string definition for message of type '<Resample-request>"
  (cl:format cl:nil "int32 p_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Resample-request)))
  "Returns full string definition for message of type 'Resample-request"
  (cl:format cl:nil "int32 p_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Resample-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Resample-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Resample-request
    (cl:cons ':p_id (p_id msg))
))
;//! \htmlinclude Resample-response.msg.html

(cl:defclass <Resample-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Resample-response (<Resample-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Resample-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Resample-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msgs-srv:<Resample-response> is deprecated: use slam_msgs-srv:Resample-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <Resample-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-srv:done-val is deprecated.  Use slam_msgs-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Resample-response>) ostream)
  "Serializes a message object of type '<Resample-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Resample-response>) istream)
  "Deserializes a message object of type '<Resample-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Resample-response>)))
  "Returns string type for a service object of type '<Resample-response>"
  "slam_msgs/ResampleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Resample-response)))
  "Returns string type for a service object of type 'Resample-response"
  "slam_msgs/ResampleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Resample-response>)))
  "Returns md5sum for a message object of type '<Resample-response>"
  "1f80de1749f85c5c1e825039a9d7a2e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Resample-response)))
  "Returns md5sum for a message object of type 'Resample-response"
  "1f80de1749f85c5c1e825039a9d7a2e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Resample-response>)))
  "Returns full string definition for message of type '<Resample-response>"
  (cl:format cl:nil "bool done~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Resample-response)))
  "Returns full string definition for message of type 'Resample-response"
  (cl:format cl:nil "bool done~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Resample-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Resample-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Resample-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Resample)))
  'Resample-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Resample)))
  'Resample-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Resample)))
  "Returns string type for a service object of type '<Resample>"
  "slam_msgs/Resample")