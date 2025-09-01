; Auto-generated. Do not edit!


(cl:in-package slam_msgs-msg)


;//! \htmlinclude ManipulatePosteriorGoal.msg.html

(cl:defclass <ManipulatePosteriorGoal> (roslisp-msg-protocol:ros-message)
  ((plot
    :reader plot
    :initarg :plot
    :type cl:boolean
    :initform cl:nil)
   (sample
    :reader sample
    :initarg :sample
    :type cl:boolean
    :initform cl:nil)
   (pings
    :reader pings
    :initarg :pings
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (track_position
    :reader track_position
    :initarg :track_position
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (track_orientation
    :reader track_orientation
    :initarg :track_orientation
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ManipulatePosteriorGoal (<ManipulatePosteriorGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulatePosteriorGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulatePosteriorGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msgs-msg:<ManipulatePosteriorGoal> is deprecated: use slam_msgs-msg:ManipulatePosteriorGoal instead.")))

(cl:ensure-generic-function 'plot-val :lambda-list '(m))
(cl:defmethod plot-val ((m <ManipulatePosteriorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:plot-val is deprecated.  Use slam_msgs-msg:plot instead.")
  (plot m))

(cl:ensure-generic-function 'sample-val :lambda-list '(m))
(cl:defmethod sample-val ((m <ManipulatePosteriorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:sample-val is deprecated.  Use slam_msgs-msg:sample instead.")
  (sample m))

(cl:ensure-generic-function 'pings-val :lambda-list '(m))
(cl:defmethod pings-val ((m <ManipulatePosteriorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:pings-val is deprecated.  Use slam_msgs-msg:pings instead.")
  (pings m))

(cl:ensure-generic-function 'track_position-val :lambda-list '(m))
(cl:defmethod track_position-val ((m <ManipulatePosteriorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:track_position-val is deprecated.  Use slam_msgs-msg:track_position instead.")
  (track_position m))

(cl:ensure-generic-function 'track_orientation-val :lambda-list '(m))
(cl:defmethod track_orientation-val ((m <ManipulatePosteriorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msgs-msg:track_orientation-val is deprecated.  Use slam_msgs-msg:track_orientation instead.")
  (track_orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulatePosteriorGoal>) ostream)
  "Serializes a message object of type '<ManipulatePosteriorGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sample) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pings) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulatePosteriorGoal>) istream)
  "Deserializes a message object of type '<ManipulatePosteriorGoal>"
    (cl:setf (cl:slot-value msg 'plot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sample) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pings) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulatePosteriorGoal>)))
  "Returns string type for a message object of type '<ManipulatePosteriorGoal>"
  "slam_msgs/ManipulatePosteriorGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatePosteriorGoal)))
  "Returns string type for a message object of type 'ManipulatePosteriorGoal"
  "slam_msgs/ManipulatePosteriorGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulatePosteriorGoal>)))
  "Returns md5sum for a message object of type '<ManipulatePosteriorGoal>"
  "8b04f4e9d6ca23ba81a46ac8f4dc07f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulatePosteriorGoal)))
  "Returns md5sum for a message object of type 'ManipulatePosteriorGoal"
  "8b04f4e9d6ca23ba81a46ac8f4dc07f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulatePosteriorGoal>)))
  "Returns full string definition for message of type '<ManipulatePosteriorGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%bool plot~%bool sample~%sensor_msgs/PointCloud2 pings~%sensor_msgs/PointCloud2 track_position~%sensor_msgs/PointCloud2 track_orientation~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulatePosteriorGoal)))
  "Returns full string definition for message of type 'ManipulatePosteriorGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%bool plot~%bool sample~%sensor_msgs/PointCloud2 pings~%sensor_msgs/PointCloud2 track_position~%sensor_msgs/PointCloud2 track_orientation~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulatePosteriorGoal>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pings))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulatePosteriorGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulatePosteriorGoal
    (cl:cons ':plot (plot msg))
    (cl:cons ':sample (sample msg))
    (cl:cons ':pings (pings msg))
    (cl:cons ':track_position (track_position msg))
    (cl:cons ':track_orientation (track_orientation msg))
))
