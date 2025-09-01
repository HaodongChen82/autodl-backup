; Auto-generated. Do not edit!


(cl:in-package slam_msgs-msg)


;//! \htmlinclude ManipulatePosteriorResult.msg.html

(cl:defclass <ManipulatePosteriorResult> (roslisp-msg-protocol:ros-message)
  ((p_id
    :reader p_id
    :initarg :p_id
    :type cl:integer
    :initform 0)
   (mu
    :reader mu
    :initarg :mu
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sigma
    :reader sigma
    :initarg :sigma
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ManipulatePosteriorResult (<ManipulatePosteriorResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulatePosteriorResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulatePosteriorResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msgs-msg:<ManipulatePosteriorResult> is deprecated: use slam_msgs-msg:ManipulatePosteriorResult instead.")))

(cl:ensure-generic-function 'p_id-val :lambda-list '(m))
(cl:defmethod p_id-val ((m <ManipulatePosteriorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:p_id-val is deprecated.  Use slam_msgs-msg:p_id instead.")
  (p_id m))

(cl:ensure-generic-function 'mu-val :lambda-list '(m))
(cl:defmethod mu-val ((m <ManipulatePosteriorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:mu-val is deprecated.  Use slam_msgs-msg:mu instead.")
  (mu m))

(cl:ensure-generic-function 'sigma-val :lambda-list '(m))
(cl:defmethod sigma-val ((m <ManipulatePosteriorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:sigma-val is deprecated.  Use slam_msgs-msg:sigma instead.")
  (sigma m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ManipulatePosteriorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:success-val is deprecated.  Use slam_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulatePosteriorResult>) ostream)
  "Serializes a message object of type '<ManipulatePosteriorResult>"
  (cl:let* ((signed (cl:slot-value msg 'p_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'mu))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'sigma))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulatePosteriorResult>) istream)
  "Deserializes a message object of type '<ManipulatePosteriorResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mu) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mu)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sigma) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sigma)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulatePosteriorResult>)))
  "Returns string type for a message object of type '<ManipulatePosteriorResult>"
  "slam_msgs/ManipulatePosteriorResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatePosteriorResult)))
  "Returns string type for a message object of type 'ManipulatePosteriorResult"
  "slam_msgs/ManipulatePosteriorResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulatePosteriorResult>)))
  "Returns md5sum for a message object of type '<ManipulatePosteriorResult>"
  "c563b6c2846f9ef65ae6f0196790efad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulatePosteriorResult)))
  "Returns md5sum for a message object of type 'ManipulatePosteriorResult"
  "c563b6c2846f9ef65ae6f0196790efad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulatePosteriorResult>)))
  "Returns full string definition for message of type '<ManipulatePosteriorResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition for sampling the posterior~%int32 p_id~%float64[] mu~%float64[] sigma~%bool success~%# no result definition for saving/plotting the posterior~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulatePosteriorResult)))
  "Returns full string definition for message of type 'ManipulatePosteriorResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition for sampling the posterior~%int32 p_id~%float64[] mu~%float64[] sigma~%bool success~%# no result definition for saving/plotting the posterior~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulatePosteriorResult>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mu) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sigma) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulatePosteriorResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulatePosteriorResult
    (cl:cons ':p_id (p_id msg))
    (cl:cons ':mu (mu msg))
    (cl:cons ':sigma (sigma msg))
    (cl:cons ':success (success msg))
))
