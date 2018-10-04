; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude GnssStatus.msg.html

(cl:defclass <GnssStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (solution_completed
    :reader solution_completed
    :initarg :solution_completed
    :type cl:boolean
    :initform cl:nil)
   (solution_status
    :reader solution_status
    :initarg :solution_status
    :type cl:integer
    :initform 0)
   (position_type
    :reader position_type
    :initarg :position_type
    :type cl:integer
    :initform 0)
   (num_sats
    :reader num_sats
    :initarg :num_sats
    :type cl:integer
    :initform 0))
)

(cl:defclass GnssStatus (<GnssStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<GnssStatus> is deprecated: use gnss_driver-msg:GnssStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'solution_completed-val :lambda-list '(m))
(cl:defmethod solution_completed-val ((m <GnssStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:solution_completed-val is deprecated.  Use gnss_driver-msg:solution_completed instead.")
  (solution_completed m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <GnssStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:solution_status-val is deprecated.  Use gnss_driver-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <GnssStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position_type-val is deprecated.  Use gnss_driver-msg:position_type instead.")
  (position_type m))

(cl:ensure-generic-function 'num_sats-val :lambda-list '(m))
(cl:defmethod num_sats-val ((m <GnssStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:num_sats-val is deprecated.  Use gnss_driver-msg:num_sats instead.")
  (num_sats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssStatus>) ostream)
  "Serializes a message object of type '<GnssStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solution_completed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_sats)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssStatus>) istream)
  "Deserializes a message object of type '<GnssStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'solution_completed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_sats) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssStatus>)))
  "Returns string type for a message object of type '<GnssStatus>"
  "gnss_driver/GnssStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssStatus)))
  "Returns string type for a message object of type 'GnssStatus"
  "gnss_driver/GnssStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssStatus>)))
  "Returns md5sum for a message object of type '<GnssStatus>"
  "fcc70857aecd5140aa4f8b0640315349")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssStatus)))
  "Returns md5sum for a message object of type 'GnssStatus"
  "fcc70857aecd5140aa4f8b0640315349")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssStatus>)))
  "Returns full string definition for message of type '<GnssStatus>"
  (cl:format cl:nil "Header header~%bool solution_completed~%uint32 solution_status~%uint32 position_type~%int32 num_sats~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssStatus)))
  "Returns full string definition for message of type 'GnssStatus"
  (cl:format cl:nil "Header header~%bool solution_completed~%uint32 solution_status~%uint32 position_type~%int32 num_sats~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssStatus
    (cl:cons ':header (header msg))
    (cl:cons ':solution_completed (solution_completed msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':position_type (position_type msg))
    (cl:cons ':num_sats (num_sats msg))
))
