; Auto-generated. Do not edit!


(cl:in-package slam_msgs-msg)


;//! \htmlinclude MbResult.msg.html

(cl:defclass <MbResult> (roslisp-msg-protocol:ros-message)
  ((particle_id
    :reader particle_id
    :initarg :particle_id
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (minibatch
    :reader minibatch
    :initarg :minibatch
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass MbResult (<MbResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MbResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MbResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msgs-msg:<MbResult> is deprecated: use slam_msgs-msg:MbResult instead.")))

(cl:ensure-generic-function 'particle_id-val :lambda-list '(m))
(cl:defmethod particle_id-val ((m <MbResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:particle_id-val is deprecated.  Use slam_msgs-msg:particle_id instead.")
  (particle_id m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MbResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:success-val is deprecated.  Use slam_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'minibatch-val :lambda-list '(m))
(cl:defmethod minibatch-val ((m <MbResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:minibatch-val is deprecated.  Use slam_msgs-msg:minibatch instead.")
  (minibatch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MbResult>) ostream)
  "Serializes a message object of type '<MbResult>"
  (cl:let* ((signed (cl:slot-value msg 'particle_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'minibatch) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MbResult>) istream)
  "Deserializes a message object of type '<MbResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'particle_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'minibatch) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MbResult>)))
  "Returns string type for a message object of type '<MbResult>"
  "slam_msgs/MbResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MbResult)))
  "Returns string type for a message object of type 'MbResult"
  "slam_msgs/MbResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MbResult>)))
  "Returns md5sum for a message object of type '<MbResult>"
  "20ae5dab59248db51a0bbf2f175fb8e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MbResult)))
  "Returns md5sum for a message object of type 'MbResult"
  "20ae5dab59248db51a0bbf2f175fb8e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MbResult>)))
  "Returns full string definition for message of type '<MbResult>"
  (cl:format cl:nil "int32 particle_id~%bool success~%sensor_msgs/PointCloud2 minibatch~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MbResult)))
  "Returns full string definition for message of type 'MbResult"
  (cl:format cl:nil "int32 particle_id~%bool success~%sensor_msgs/PointCloud2 minibatch~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MbResult>))
  (cl:+ 0
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'minibatch))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MbResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MbResult
    (cl:cons ':particle_id (particle_id msg))
    (cl:cons ':success (success msg))
    (cl:cons ':minibatch (minibatch msg))
))
