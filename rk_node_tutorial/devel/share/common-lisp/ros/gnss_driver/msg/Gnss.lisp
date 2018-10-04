; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude Gnss.msg.html

(cl:defclass <Gnss> (roslisp-msg-protocol:ros-message)
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
   (velocity_latency
    :reader velocity_latency
    :initarg :velocity_latency
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type gnss_driver-msg:PointLLH
    :initform (cl:make-instance 'gnss_driver-msg:PointLLH))
   (position_std_dev
    :reader position_std_dev
    :initarg :position_std_dev
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (linear_velocity_std_dev
    :reader linear_velocity_std_dev
    :initarg :linear_velocity_std_dev
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (num_sats
    :reader num_sats
    :initarg :num_sats
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (solution_status
    :reader solution_status
    :initarg :solution_status
    :type cl:integer
    :initform 0)
   (position_type
    :reader position_type
    :initarg :position_type
    :type cl:integer
    :initform 0))
)

(cl:defclass Gnss (<Gnss>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gnss>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gnss)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<Gnss> is deprecated: use gnss_driver-msg:Gnss instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'measurement_time-val :lambda-list '(m))
(cl:defmethod measurement_time-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:measurement_time-val is deprecated.  Use gnss_driver-msg:measurement_time instead.")
  (measurement_time m))

(cl:ensure-generic-function 'velocity_latency-val :lambda-list '(m))
(cl:defmethod velocity_latency-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:velocity_latency-val is deprecated.  Use gnss_driver-msg:velocity_latency instead.")
  (velocity_latency m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position-val is deprecated.  Use gnss_driver-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'position_std_dev-val :lambda-list '(m))
(cl:defmethod position_std_dev-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position_std_dev-val is deprecated.  Use gnss_driver-msg:position_std_dev instead.")
  (position_std_dev m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_velocity-val is deprecated.  Use gnss_driver-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_velocity_std_dev-val :lambda-list '(m))
(cl:defmethod linear_velocity_std_dev-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_velocity_std_dev-val is deprecated.  Use gnss_driver-msg:linear_velocity_std_dev instead.")
  (linear_velocity_std_dev m))

(cl:ensure-generic-function 'num_sats-val :lambda-list '(m))
(cl:defmethod num_sats-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:num_sats-val is deprecated.  Use gnss_driver-msg:num_sats instead.")
  (num_sats m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:type-val is deprecated.  Use gnss_driver-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:solution_status-val is deprecated.  Use gnss_driver-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <Gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position_type-val is deprecated.  Use gnss_driver-msg:position_type instead.")
  (position_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Gnss>)))
    "Constants for message type '<Gnss>"
  '((:INVALID . 0)
    (:PROPAGATED . 1)
    (:SINGLE . 2)
    (:PSRDIFF . 3)
    (:PPP . 4)
    (:RTK_FLOAT . 5)
    (:RTK_INTEGER . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Gnss)))
    "Constants for message type 'Gnss"
  '((:INVALID . 0)
    (:PROPAGATED . 1)
    (:SINGLE . 2)
    (:PSRDIFF . 3)
    (:PPP . 4)
    (:RTK_FLOAT . 5)
    (:RTK_INTEGER . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gnss>) ostream)
  "Serializes a message object of type '<Gnss>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_std_dev) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity_std_dev) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_sats)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gnss>) istream)
  "Deserializes a message object of type '<Gnss>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_latency) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_std_dev) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity_std_dev) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_sats) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gnss>)))
  "Returns string type for a message object of type '<Gnss>"
  "gnss_driver/Gnss")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gnss)))
  "Returns string type for a message object of type 'Gnss"
  "gnss_driver/Gnss")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gnss>)))
  "Returns md5sum for a message object of type '<Gnss>"
  "de82954b18f7418bd62c4ba27cf8d96f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gnss)))
  "Returns md5sum for a message object of type 'Gnss"
  "de82954b18f7418bd62c4ba27cf8d96f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gnss>)))
  "Returns full string definition for message of type '<Gnss>"
  (cl:format cl:nil "Header header~%float64 measurement_time~%float32 velocity_latency~%PointLLH position~%Point3D position_std_dev~%Point3D linear_velocity~%Point3D linear_velocity_std_dev~%int32 num_sats~%~%int32 INVALID=0~%int32 PROPAGATED=1~%int32 SINGLE=2~%int32 PSRDIFF=3~%int32 PPP=4~%int32 RTK_FLOAT=5~%int32 RTK_INTEGER=6~%~%int32 type~%uint32 solution_status~%uint32 position_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/PointLLH~%float64 lon~%float64 lat~%float64 height~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gnss)))
  "Returns full string definition for message of type 'Gnss"
  (cl:format cl:nil "Header header~%float64 measurement_time~%float32 velocity_latency~%PointLLH position~%Point3D position_std_dev~%Point3D linear_velocity~%Point3D linear_velocity_std_dev~%int32 num_sats~%~%int32 INVALID=0~%int32 PROPAGATED=1~%int32 SINGLE=2~%int32 PSRDIFF=3~%int32 PPP=4~%int32 RTK_FLOAT=5~%int32 RTK_INTEGER=6~%~%int32 type~%uint32 solution_status~%uint32 position_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/PointLLH~%float64 lon~%float64 lat~%float64 height~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gnss>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_std_dev))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity_std_dev))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gnss>))
  "Converts a ROS message object to a list"
  (cl:list 'Gnss
    (cl:cons ':header (header msg))
    (cl:cons ':measurement_time (measurement_time msg))
    (cl:cons ':velocity_latency (velocity_latency msg))
    (cl:cons ':position (position msg))
    (cl:cons ':position_std_dev (position_std_dev msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':linear_velocity_std_dev (linear_velocity_std_dev msg))
    (cl:cons ':num_sats (num_sats msg))
    (cl:cons ':type (type msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':position_type (position_type msg))
))
