; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude GnssRange.msg.html

(cl:defclass <GnssRange> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (measurement_time
    :reader measurement_time
    :initarg :measurement_time
    :type cl:float
    :initform 0.0)
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector gnss_driver-msg:RangeInfo)
   :initform (cl:make-array 0 :element-type 'gnss_driver-msg:RangeInfo :initial-element (cl:make-instance 'gnss_driver-msg:RangeInfo))))
)

(cl:defclass GnssRange (<GnssRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<GnssRange> is deprecated: use gnss_driver-msg:GnssRange instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'measurement_time-val :lambda-list '(m))
(cl:defmethod measurement_time-val ((m <GnssRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:measurement_time-val is deprecated.  Use gnss_driver-msg:measurement_time instead.")
  (measurement_time m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <GnssRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:ranges-val is deprecated.  Use gnss_driver-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssRange>) ostream)
  "Serializes a message object of type '<GnssRange>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measurement_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssRange>) istream)
  "Deserializes a message object of type '<GnssRange>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_time) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_driver-msg:RangeInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssRange>)))
  "Returns string type for a message object of type '<GnssRange>"
  "gnss_driver/GnssRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssRange)))
  "Returns string type for a message object of type 'GnssRange"
  "gnss_driver/GnssRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssRange>)))
  "Returns md5sum for a message object of type '<GnssRange>"
  "98189513fbb1deb4e990550a5fe42c3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssRange)))
  "Returns md5sum for a message object of type 'GnssRange"
  "98189513fbb1deb4e990550a5fe42c3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssRange>)))
  "Returns full string definition for message of type '<GnssRange>"
  (cl:format cl:nil "Header header~%float64 measurement_time~%RangeInfo[] ranges~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/RangeInfo~%int32 GPS=0~%int32 GLONASS=1~%int32 SBAS=2~%int32 GALILEO=3~%int32 BEIDOU=4~%int32 QZSS=5~%~%int32 constellation~%int32 prn~%~%uint32 carrier_frequency~%float64 pseudorange~%float32 pseudorange_std_dev~%float64 carrier_phase~%float32 carrier_phase_std_dev~%float32 doppler~%float32 doppler_std_dev~%int32 cno~%int32 lock_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssRange)))
  "Returns full string definition for message of type 'GnssRange"
  (cl:format cl:nil "Header header~%float64 measurement_time~%RangeInfo[] ranges~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/RangeInfo~%int32 GPS=0~%int32 GLONASS=1~%int32 SBAS=2~%int32 GALILEO=3~%int32 BEIDOU=4~%int32 QZSS=5~%~%int32 constellation~%int32 prn~%~%uint32 carrier_frequency~%float64 pseudorange~%float32 pseudorange_std_dev~%float64 carrier_phase~%float32 carrier_phase_std_dev~%float32 doppler~%float32 doppler_std_dev~%int32 cno~%int32 lock_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssRange>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssRange>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssRange
    (cl:cons ':header (header msg))
    (cl:cons ':measurement_time (measurement_time msg))
    (cl:cons ':ranges (ranges msg))
))
