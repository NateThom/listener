; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude InsStatus.msg.html

(cl:defclass <InsStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass InsStatus (<InsStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InsStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InsStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<InsStatus> is deprecated: use gnss_driver-msg:InsStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <InsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:type-val is deprecated.  Use gnss_driver-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InsStatus>)))
    "Constants for message type '<InsStatus>"
  '((:INVALID . 0)
    (:CONVERGING . 1)
    (:GOOD . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InsStatus)))
    "Constants for message type 'InsStatus"
  '((:INVALID . 0)
    (:CONVERGING . 1)
    (:GOOD . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InsStatus>) ostream)
  "Serializes a message object of type '<InsStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InsStatus>) istream)
  "Deserializes a message object of type '<InsStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InsStatus>)))
  "Returns string type for a message object of type '<InsStatus>"
  "gnss_driver/InsStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InsStatus)))
  "Returns string type for a message object of type 'InsStatus"
  "gnss_driver/InsStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InsStatus>)))
  "Returns md5sum for a message object of type '<InsStatus>"
  "74371ad6e1867e22a3c23379ae98b03d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InsStatus)))
  "Returns md5sum for a message object of type 'InsStatus"
  "74371ad6e1867e22a3c23379ae98b03d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InsStatus>)))
  "Returns full string definition for message of type '<InsStatus>"
  (cl:format cl:nil "Header header~%~%uint32 INVALID=0~%uint32 CONVERGING=1~%uint32 GOOD=2~%~%uint32 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InsStatus)))
  "Returns full string definition for message of type 'InsStatus"
  (cl:format cl:nil "Header header~%~%uint32 INVALID=0~%uint32 CONVERGING=1~%uint32 GOOD=2~%~%uint32 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InsStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InsStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'InsStatus
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
))
