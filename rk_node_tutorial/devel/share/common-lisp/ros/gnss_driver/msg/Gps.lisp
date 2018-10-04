; Auto-generated. Do not edit!


(cl:in-package gnss_driver-msg)


;//! \htmlinclude Gps.msg.html

(cl:defclass <Gps> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (localization
    :reader localization
    :initarg :localization
    :type gnss_driver-msg:Pose
    :initform (cl:make-instance 'gnss_driver-msg:Pose)))
)

(cl:defclass Gps (<Gps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_driver-msg:<Gps> is deprecated: use gnss_driver-msg:Gps instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:header-val is deprecated.  Use gnss_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'localization-val :lambda-list '(m))
(cl:defmethod localization-val ((m <Gps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_driver-msg:localization-val is deprecated.  Use gnss_driver-msg:localization instead.")
  (localization m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gps>) ostream)
  "Serializes a message object of type '<Gps>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localization) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gps>) istream)
  "Deserializes a message object of type '<Gps>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localization) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gps>)))
  "Returns string type for a message object of type '<Gps>"
  "gnss_driver/Gps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gps)))
  "Returns string type for a message object of type 'Gps"
  "gnss_driver/Gps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gps>)))
  "Returns md5sum for a message object of type '<Gps>"
  "88bde8f07fbec774b15776c61844ed3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gps)))
  "Returns md5sum for a message object of type 'Gps"
  "88bde8f07fbec774b15776c61844ed3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gps>)))
  "Returns full string definition for message of type '<Gps>"
  (cl:format cl:nil "Header header~%Pose localization~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/Pose~%PointENU position~%Quaternion orientation~%Point3D linear_velocity~%Point3D linear_acceleration~%Point3D angular_velocity~%~%float64 heading~%Point3D linear_acceleration_vrf~%Point3D angular_velocity_vrf~%~%================================================================================~%MSG: gnss_driver/PointENU~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gnss_driver/Quaternion~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gps)))
  "Returns full string definition for message of type 'Gps"
  (cl:format cl:nil "Header header~%Pose localization~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: gnss_driver/Pose~%PointENU position~%Quaternion orientation~%Point3D linear_velocity~%Point3D linear_acceleration~%Point3D angular_velocity~%~%float64 heading~%Point3D linear_acceleration_vrf~%Point3D angular_velocity_vrf~%~%================================================================================~%MSG: gnss_driver/PointENU~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gnss_driver/Quaternion~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%================================================================================~%MSG: gnss_driver/Point3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gps>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localization))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gps>))
  "Converts a ROS message object to a list"
  (cl:list 'Gps
    (cl:cons ':header (header msg))
    (cl:cons ':localization (localization msg))
))
