; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude RangeInfo.msg.html

(cl:defclass <RangeInfo> (roslisp-msg-protocol:ros-message)
  ((constellation
    :reader constellation
    :initarg :constellation
    :type cl:integer
    :initform 0)
   (prn
    :reader prn
    :initarg :prn
    :type cl:integer
    :initform 0)
   (carrier_frequency
    :reader carrier_frequency
    :initarg :carrier_frequency
    :type cl:integer
    :initform 0)
   (pseudorange
    :reader pseudorange
    :initarg :pseudorange
    :type cl:float
    :initform 0.0)
   (pseudorange_std_dev
    :reader pseudorange_std_dev
    :initarg :pseudorange_std_dev
    :type cl:float
    :initform 0.0)
   (carrier_phase
    :reader carrier_phase
    :initarg :carrier_phase
    :type cl:float
    :initform 0.0)
   (carrier_phase_std_dev
    :reader carrier_phase_std_dev
    :initarg :carrier_phase_std_dev
    :type cl:float
    :initform 0.0)
   (doppler
    :reader doppler
    :initarg :doppler
    :type cl:float
    :initform 0.0)
   (doppler_std_dev
    :reader doppler_std_dev
    :initarg :doppler_std_dev
    :type cl:float
    :initform 0.0)
   (cno
    :reader cno
    :initarg :cno
    :type cl:integer
    :initform 0)
   (lock_time
    :reader lock_time
    :initarg :lock_time
    :type cl:integer
    :initform 0))
)

(cl:defclass RangeInfo (<RangeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<RangeInfo> is deprecated: use gnss_driver-msg:RangeInfo instead.")))

(cl:ensure-generic-function 'constellation-val :lambda-list '(m))
(cl:defmethod constellation-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:constellation-val is deprecated.  Use gnss_driver-msg:constellation instead.")
  (constellation m))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:prn-val is deprecated.  Use gnss_driver-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'carrier_frequency-val :lambda-list '(m))
(cl:defmethod carrier_frequency-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:carrier_frequency-val is deprecated.  Use gnss_driver-msg:carrier_frequency instead.")
  (carrier_frequency m))

(cl:ensure-generic-function 'pseudorange-val :lambda-list '(m))
(cl:defmethod pseudorange-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:pseudorange-val is deprecated.  Use gnss_driver-msg:pseudorange instead.")
  (pseudorange m))

(cl:ensure-generic-function 'pseudorange_std_dev-val :lambda-list '(m))
(cl:defmethod pseudorange_std_dev-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:pseudorange_std_dev-val is deprecated.  Use gnss_driver-msg:pseudorange_std_dev instead.")
  (pseudorange_std_dev m))

(cl:ensure-generic-function 'carrier_phase-val :lambda-list '(m))
(cl:defmethod carrier_phase-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:carrier_phase-val is deprecated.  Use gnss_driver-msg:carrier_phase instead.")
  (carrier_phase m))

(cl:ensure-generic-function 'carrier_phase_std_dev-val :lambda-list '(m))
(cl:defmethod carrier_phase_std_dev-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:carrier_phase_std_dev-val is deprecated.  Use gnss_driver-msg:carrier_phase_std_dev instead.")
  (carrier_phase_std_dev m))

(cl:ensure-generic-function 'doppler-val :lambda-list '(m))
(cl:defmethod doppler-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:doppler-val is deprecated.  Use gnss_driver-msg:doppler instead.")
  (doppler m))

(cl:ensure-generic-function 'doppler_std_dev-val :lambda-list '(m))
(cl:defmethod doppler_std_dev-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:doppler_std_dev-val is deprecated.  Use gnss_driver-msg:doppler_std_dev instead.")
  (doppler_std_dev m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:cno-val is deprecated.  Use gnss_driver-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'lock_time-val :lambda-list '(m))
(cl:defmethod lock_time-val ((m <RangeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:lock_time-val is deprecated.  Use gnss_driver-msg:lock_time instead.")
  (lock_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RangeInfo>)))
    "Constants for message type '<RangeInfo>"
  '((:GPS . 0)
    (:GLONASS . 1)
    (:SBAS . 2)
    (:GALILEO . 3)
    (:BEIDOU . 4)
    (:QZSS . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RangeInfo)))
    "Constants for message type 'RangeInfo"
  '((:GPS . 0)
    (:GLONASS . 1)
    (:SBAS . 2)
    (:GALILEO . 3)
    (:BEIDOU . 4)
    (:QZSS . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeInfo>) ostream)
  "Serializes a message object of type '<RangeInfo>"
  (cl:let* ((signed (cl:slot-value msg 'constellation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'prn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'carrier_frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'carrier_frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'carrier_frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'carrier_frequency)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pseudorange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pseudorange_std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'carrier_phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carrier_phase_std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doppler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doppler_std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'cno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lock_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeInfo>) istream)
  "Deserializes a message object of type '<RangeInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'constellation) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'carrier_frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'carrier_frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'carrier_frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'carrier_frequency)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pseudorange) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pseudorange_std_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carrier_phase) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carrier_phase_std_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler_std_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lock_time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeInfo>)))
  "Returns string type for a message object of type '<RangeInfo>"
  "gnss_driver/RangeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeInfo)))
  "Returns string type for a message object of type 'RangeInfo"
  "gnss_driver/RangeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeInfo>)))
  "Returns md5sum for a message object of type '<RangeInfo>"
  "6792b8c07d815111a6e39320c1f1b541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeInfo)))
  "Returns md5sum for a message object of type 'RangeInfo"
  "6792b8c07d815111a6e39320c1f1b541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeInfo>)))
  "Returns full string definition for message of type '<RangeInfo>"
  (cl:format cl:nil "int32 GPS=0~%int32 GLONASS=1~%int32 SBAS=2~%int32 GALILEO=3~%int32 BEIDOU=4~%int32 QZSS=5~%~%int32 constellation~%int32 prn~%~%uint32 carrier_frequency~%float64 pseudorange~%float32 pseudorange_std_dev~%float64 carrier_phase~%float32 carrier_phase_std_dev~%float32 doppler~%float32 doppler_std_dev~%int32 cno~%int32 lock_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeInfo)))
  "Returns full string definition for message of type 'RangeInfo"
  (cl:format cl:nil "int32 GPS=0~%int32 GLONASS=1~%int32 SBAS=2~%int32 GALILEO=3~%int32 BEIDOU=4~%int32 QZSS=5~%~%int32 constellation~%int32 prn~%~%uint32 carrier_frequency~%float64 pseudorange~%float32 pseudorange_std_dev~%float64 carrier_phase~%float32 carrier_phase_std_dev~%float32 doppler~%float32 doppler_std_dev~%int32 cno~%int32 lock_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeInfo>))
  (cl:+ 0
     4
     4
     4
     8
     4
     8
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeInfo
    (cl:cons ':constellation (constellation msg))
    (cl:cons ':prn (prn msg))
    (cl:cons ':carrier_frequency (carrier_frequency msg))
    (cl:cons ':pseudorange (pseudorange msg))
    (cl:cons ':pseudorange_std_dev (pseudorange_std_dev msg))
    (cl:cons ':carrier_phase (carrier_phase msg))
    (cl:cons ':carrier_phase_std_dev (carrier_phase_std_dev msg))
    (cl:cons ':doppler (doppler msg))
    (cl:cons ':doppler_std_dev (doppler_std_dev msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':lock_time (lock_time msg))
))
