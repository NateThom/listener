; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude GPGGA.msg.html

(cl:defclass <GPGGA> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gpgga
    :reader gpgga
    :initarg :gpgga
    :type cl:string
    :initform ""))
)

(cl:defclass GPGGA (<GPGGA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPGGA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPGGA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<GPGGA> is deprecated: use gnss_driver-msg:GPGGA instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPGGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gpgga-val :lambda-list '(m))
(cl:defmethod gpgga-val ((m <GPGGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:gpgga-val is deprecated.  Use gnss_driver-msg:gpgga instead.")
  (gpgga m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPGGA>) ostream)
  "Serializes a message object of type '<GPGGA>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gpgga))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gpgga))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPGGA>) istream)
  "Deserializes a message object of type '<GPGGA>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gpgga) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gpgga) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPGGA>)))
  "Returns string type for a message object of type '<GPGGA>"
  "gnss_driver/GPGGA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPGGA)))
  "Returns string type for a message object of type 'GPGGA"
  "gnss_driver/GPGGA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPGGA>)))
  "Returns md5sum for a message object of type '<GPGGA>"
  "8af5a926d1265c407ee0b416b249fdf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPGGA)))
  "Returns md5sum for a message object of type 'GPGGA"
  "8af5a926d1265c407ee0b416b249fdf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPGGA>)))
  "Returns full string definition for message of type '<GPGGA>"
  (cl:format cl:nil "Header header~%string gpgga~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPGGA)))
  "Returns full string definition for message of type 'GPGGA"
  (cl:format cl:nil "Header header~%string gpgga~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPGGA>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'gpgga))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPGGA>))
  "Converts a ROS message object to a list"
  (cl:list 'GPGGA
    (cl:cons ':header (header msg))
    (cl:cons ':gpgga (gpgga msg))
))
