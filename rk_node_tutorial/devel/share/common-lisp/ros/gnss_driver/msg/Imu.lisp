; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude Imu.msg.html

(cl:defclass <Imu> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (imu
    :reader imu
    :initarg :imu
    :type gnss_driver-msg:Pose
    :initform (cl:make-instance 'gnss_driver-msg:Pose)))
)

(cl:defclass Imu (<Imu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Imu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Imu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<Imu> is deprecated: use gnss_driver-msg:Imu instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <Imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:imu-val is deprecated.  Use gnss_driver-msg:imu instead.")
  (imu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Imu>) ostream)
  "Serializes a message object of type '<Imu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Imu>) istream)
  "Deserializes a message object of type '<Imu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Imu>)))
  "Returns string type for a message object of type '<Imu>"
  "gnss_driver/Imu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Imu)))
  "Returns string type for a message object of type 'Imu"
  "gnss_driver/Imu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Imu>)))
  "Returns md5sum for a message object of type '<Imu>"
  "d872bb872d5ed4666e259b29aa20d9c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Imu)))
  "Returns md5sum for a message object of type 'Imu"
  "d872bb872d5ed4666e259b29aa20d9c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Imu>)))
  "Returns full string definition for message of type '<Imu>"
  (cl:format cl:nil "Header header~%Pose imu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/Pose~%PointENU position~%Quaternion orientation~%Point3D linear_velocity~%Point3D linear_acceleration~%Point3D angular_velocity~%~%float64 heading~%Point3D linear_acceleration_vrf~%Point3D angular_velocity_vrf~%~%================================================================================~%MSG: gnss_driver/PointENU~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gnss_driver/Quaternion~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Imu)))
  "Returns full string definition for message of type 'Imu"
  (cl:format cl:nil "Header header~%Pose imu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/Pose~%PointENU position~%Quaternion orientation~%Point3D linear_velocity~%Point3D linear_acceleration~%Point3D angular_velocity~%~%float64 heading~%Point3D linear_acceleration_vrf~%Point3D angular_velocity_vrf~%~%================================================================================~%MSG: gnss_driver/PointENU~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gnss_driver/Quaternion~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Imu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Imu>))
  "Converts a ROS message object to a list"
  (cl:list 'Imu
    (cl:cons ':header (header msg))
    (cl:cons ':imu (imu msg))
))
