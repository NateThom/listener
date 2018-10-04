; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude Ins.msg.html

(cl:defclass <Ins> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type gnss_driver-msg:PointLLH
    :initform (cl:make-instance 'gnss_driver-msg:PointLLH))
   (euler_angles
    :reader euler_angles
    :initarg :euler_angles
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (position_covariance
    :reader position_covariance
    :initarg :position_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (euler_angles_covariance
    :reader euler_angles_covariance
    :initarg :euler_angles_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (linear_velocity_covariance
    :reader linear_velocity_covariance
    :initarg :linear_velocity_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (angular_velocity_covariance
    :reader angular_velocity_covariance
    :initarg :angular_velocity_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (linear_acceleration_covariance
    :reader linear_acceleration_covariance
    :initarg :linear_acceleration_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Ins (<Ins>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ins>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ins)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<Ins> is deprecated: use gnss_driver-msg:Ins instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'measurement_time-val :lambda-list '(m))
(cl:defmethod measurement_time-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:measurement_time-val is deprecated.  Use gnss_driver-msg:measurement_time instead.")
  (measurement_time m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:type-val is deprecated.  Use gnss_driver-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position-val is deprecated.  Use gnss_driver-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'euler_angles-val :lambda-list '(m))
(cl:defmethod euler_angles-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:euler_angles-val is deprecated.  Use gnss_driver-msg:euler_angles instead.")
  (euler_angles m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_velocity-val is deprecated.  Use gnss_driver-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:angular_velocity-val is deprecated.  Use gnss_driver-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_acceleration-val is deprecated.  Use gnss_driver-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'position_covariance-val :lambda-list '(m))
(cl:defmethod position_covariance-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position_covariance-val is deprecated.  Use gnss_driver-msg:position_covariance instead.")
  (position_covariance m))

(cl:ensure-generic-function 'euler_angles_covariance-val :lambda-list '(m))
(cl:defmethod euler_angles_covariance-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:euler_angles_covariance-val is deprecated.  Use gnss_driver-msg:euler_angles_covariance instead.")
  (euler_angles_covariance m))

(cl:ensure-generic-function 'linear_velocity_covariance-val :lambda-list '(m))
(cl:defmethod linear_velocity_covariance-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_velocity_covariance-val is deprecated.  Use gnss_driver-msg:linear_velocity_covariance instead.")
  (linear_velocity_covariance m))

(cl:ensure-generic-function 'angular_velocity_covariance-val :lambda-list '(m))
(cl:defmethod angular_velocity_covariance-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:angular_velocity_covariance-val is deprecated.  Use gnss_driver-msg:angular_velocity_covariance instead.")
  (angular_velocity_covariance m))

(cl:ensure-generic-function 'linear_acceleration_covariance-val :lambda-list '(m))
(cl:defmethod linear_acceleration_covariance-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_acceleration_covariance-val is deprecated.  Use gnss_driver-msg:linear_acceleration_covariance instead.")
  (linear_acceleration_covariance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ins>)))
    "Constants for message type '<Ins>"
  '((:INVALID . 0)
    (:CONVERGING . 1)
    (:GOOD . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ins)))
    "Constants for message type 'Ins"
  '((:INVALID . 0)
    (:CONVERGING . 1)
    (:GOOD . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ins>) ostream)
  "Serializes a message object of type '<Ins>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_angles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'euler_angles_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'euler_angles_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'linear_velocity_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'linear_velocity_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angular_velocity_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angular_velocity_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'linear_acceleration_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'linear_acceleration_covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ins>) istream)
  "Deserializes a message object of type '<Ins>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_angles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'euler_angles_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'euler_angles_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'linear_velocity_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'linear_velocity_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angular_velocity_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angular_velocity_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'linear_acceleration_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'linear_acceleration_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ins>)))
  "Returns string type for a message object of type '<Ins>"
  "gnss_driver/Ins")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ins)))
  "Returns string type for a message object of type 'Ins"
  "gnss_driver/Ins")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ins>)))
  "Returns md5sum for a message object of type '<Ins>"
  "fa4f9086662ec13f5100709ba926f39b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ins)))
  "Returns md5sum for a message object of type 'Ins"
  "fa4f9086662ec13f5100709ba926f39b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ins>)))
  "Returns full string definition for message of type '<Ins>"
  (cl:format cl:nil "Header header~%float64 measurement_time~%~%uint32 INVALID=0~%uint32 CONVERGING=1~%uint32 GOOD=2~%~%uint32 type~%PointLLH position~%Point3D euler_angles~%Point3D linear_velocity~%Point3D angular_velocity~%Point3D linear_acceleration~%~%float32[] position_covariance~%float32[] euler_angles_covariance~%float32[] linear_velocity_covariance~%float32[] angular_velocity_covariance~%float32[] linear_acceleration_covariance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/PointLLH~%float64 lon~%float64 lat~%float64 height~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ins)))
  "Returns full string definition for message of type 'Ins"
  (cl:format cl:nil "Header header~%float64 measurement_time~%~%uint32 INVALID=0~%uint32 CONVERGING=1~%uint32 GOOD=2~%~%uint32 type~%PointLLH position~%Point3D euler_angles~%Point3D linear_velocity~%Point3D angular_velocity~%Point3D linear_acceleration~%~%float32[] position_covariance~%float32[] euler_angles_covariance~%float32[] linear_velocity_covariance~%float32[] angular_velocity_covariance~%float32[] linear_acceleration_covariance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/PointLLH~%float64 lon~%float64 lat~%float64 height~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ins>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_angles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'euler_angles_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'linear_velocity_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angular_velocity_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'linear_acceleration_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ins>))
  "Converts a ROS message object to a list"
  (cl:list 'Ins
    (cl:cons ':header (header msg))
    (cl:cons ':measurement_time (measurement_time msg))
    (cl:cons ':type (type msg))
    (cl:cons ':position (position msg))
    (cl:cons ':euler_angles (euler_angles msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':position_covariance (position_covariance msg))
    (cl:cons ':euler_angles_covariance (euler_angles_covariance msg))
    (cl:cons ':linear_velocity_covariance (linear_velocity_covariance msg))
    (cl:cons ':angular_velocity_covariance (angular_velocity_covariance msg))
    (cl:cons ':linear_acceleration_covariance (linear_acceleration_covariance msg))
))
