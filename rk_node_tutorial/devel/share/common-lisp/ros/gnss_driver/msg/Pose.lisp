; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude Pose.msg.html

(cl:defclass <Pose> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type gnss_driver-msg:PointENU
    :initform (cl:make-instance 'gnss_driver-msg:PointENU))
   (orientation
    :reader orientation
    :initarg :orientation
    :type gnss_driver-msg:Quaternion
    :initform (cl:make-instance 'gnss_driver-msg:Quaternion))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (linear_acceleration_vrf
    :reader linear_acceleration_vrf
    :initarg :linear_acceleration_vrf
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D))
   (angular_velocity_vrf
    :reader angular_velocity_vrf
    :initarg :angular_velocity_vrf
    :type gnss_driver-msg:Point3D
    :initform (cl:make-instance 'gnss_driver-msg:Point3D)))
)

(cl:defclass Pose (<Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<Pose> is deprecated: use gnss_driver-msg:Pose instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:position-val is deprecated.  Use gnss_driver-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:orientation-val is deprecated.  Use gnss_driver-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_velocity-val is deprecated.  Use gnss_driver-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_acceleration-val is deprecated.  Use gnss_driver-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:angular_velocity-val is deprecated.  Use gnss_driver-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:heading-val is deprecated.  Use gnss_driver-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'linear_acceleration_vrf-val :lambda-list '(m))
(cl:defmethod linear_acceleration_vrf-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:linear_acceleration_vrf-val is deprecated.  Use gnss_driver-msg:linear_acceleration_vrf instead.")
  (linear_acceleration_vrf m))

(cl:ensure-generic-function 'angular_velocity_vrf-val :lambda-list '(m))
(cl:defmethod angular_velocity_vrf-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:angular_velocity_vrf-val is deprecated.  Use gnss_driver-msg:angular_velocity_vrf instead.")
  (angular_velocity_vrf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose>) ostream)
  "Serializes a message object of type '<Pose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration_vrf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity_vrf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose>) istream)
  "Deserializes a message object of type '<Pose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration_vrf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity_vrf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose>)))
  "Returns string type for a message object of type '<Pose>"
  "gnss_driver/Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose)))
  "Returns string type for a message object of type 'Pose"
  "gnss_driver/Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose>)))
  "Returns md5sum for a message object of type '<Pose>"
  "f88501e9ff1cc28ee87abe3d800d0709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose)))
  "Returns md5sum for a message object of type 'Pose"
  "f88501e9ff1cc28ee87abe3d800d0709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose>)))
  "Returns full string definition for message of type '<Pose>"
  (cl:format cl:nil "PointENU position~%Quaternion orientation~%Point3D linear_velocity~%Point3D linear_acceleration~%Point3D angular_velocity~%~%float64 heading~%Point3D linear_acceleration_vrf~%Point3D angular_velocity_vrf~%~%================================================================================~%MSG: gnss_driver/PointENU~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gnss_driver/Quaternion~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose)))
  "Returns full string definition for message of type 'Pose"
  (cl:format cl:nil "PointENU position~%Quaternion orientation~%Point3D linear_velocity~%Point3D linear_acceleration~%Point3D angular_velocity~%~%float64 heading~%Point3D linear_acceleration_vrf~%Point3D angular_velocity_vrf~%~%================================================================================~%MSG: gnss_driver/PointENU~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gnss_driver/Quaternion~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration_vrf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity_vrf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':linear_acceleration_vrf (linear_acceleration_vrf msg))
    (cl:cons ':angular_velocity_vrf (angular_velocity_vrf msg))
))
