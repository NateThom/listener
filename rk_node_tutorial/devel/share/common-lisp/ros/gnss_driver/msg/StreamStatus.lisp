; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude StreamStatus.msg.html

(cl:defclass <StreamStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ins_stream_type
    :reader ins_stream_type
    :initarg :ins_stream_type
    :type cl:integer
    :initform 0)
   (rtk_stream_in_type
    :reader rtk_stream_in_type
    :initarg :rtk_stream_in_type
    :type cl:integer
    :initform 0)
   (rtk_stream_out_type
    :reader rtk_stream_out_type
    :initarg :rtk_stream_out_type
    :type cl:integer
    :initform 0))
)

(cl:defclass StreamStatus (<StreamStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StreamStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StreamStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<StreamStatus> is deprecated: use gnss_driver-msg:StreamStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StreamStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ins_stream_type-val :lambda-list '(m))
(cl:defmethod ins_stream_type-val ((m <StreamStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:ins_stream_type-val is deprecated.  Use gnss_driver-msg:ins_stream_type instead.")
  (ins_stream_type m))

(cl:ensure-generic-function 'rtk_stream_in_type-val :lambda-list '(m))
(cl:defmethod rtk_stream_in_type-val ((m <StreamStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:rtk_stream_in_type-val is deprecated.  Use gnss_driver-msg:rtk_stream_in_type instead.")
  (rtk_stream_in_type m))

(cl:ensure-generic-function 'rtk_stream_out_type-val :lambda-list '(m))
(cl:defmethod rtk_stream_out_type-val ((m <StreamStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:rtk_stream_out_type-val is deprecated.  Use gnss_driver-msg:rtk_stream_out_type instead.")
  (rtk_stream_out_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StreamStatus>)))
    "Constants for message type '<StreamStatus>"
  '((:DISCONNECTED . 0)
    (:CONNECTED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StreamStatus)))
    "Constants for message type 'StreamStatus"
  '((:DISCONNECTED . 0)
    (:CONNECTED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StreamStatus>) ostream)
  "Serializes a message object of type '<StreamStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_stream_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ins_stream_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ins_stream_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ins_stream_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_stream_in_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rtk_stream_in_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rtk_stream_in_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rtk_stream_in_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_stream_out_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rtk_stream_out_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rtk_stream_out_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rtk_stream_out_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StreamStatus>) istream)
  "Deserializes a message object of type '<StreamStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_stream_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ins_stream_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ins_stream_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ins_stream_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_stream_in_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rtk_stream_in_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rtk_stream_in_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rtk_stream_in_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_stream_out_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rtk_stream_out_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rtk_stream_out_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rtk_stream_out_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StreamStatus>)))
  "Returns string type for a message object of type '<StreamStatus>"
  "gnss_driver/StreamStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StreamStatus)))
  "Returns string type for a message object of type 'StreamStatus"
  "gnss_driver/StreamStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StreamStatus>)))
  "Returns md5sum for a message object of type '<StreamStatus>"
  "684d0fb3e4841d4ebe4b6718a9cbfae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StreamStatus)))
  "Returns md5sum for a message object of type 'StreamStatus"
  "684d0fb3e4841d4ebe4b6718a9cbfae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StreamStatus>)))
  "Returns full string definition for message of type '<StreamStatus>"
  (cl:format cl:nil "Header header~%~%uint32 DISCONNECTED=0~%uint32 CONNECTED=1~%~%uint32 ins_stream_type~%uint32 rtk_stream_in_type~%uint32 rtk_stream_out_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StreamStatus)))
  "Returns full string definition for message of type 'StreamStatus"
  (cl:format cl:nil "Header header~%~%uint32 DISCONNECTED=0~%uint32 CONNECTED=1~%~%uint32 ins_stream_type~%uint32 rtk_stream_in_type~%uint32 rtk_stream_out_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StreamStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StreamStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'StreamStatus
    (cl:cons ':header (header msg))
    (cl:cons ':ins_stream_type (ins_stream_type msg))
    (cl:cons ':rtk_stream_in_type (rtk_stream_in_type msg))
    (cl:cons ':rtk_stream_out_type (rtk_stream_out_type msg))
))
