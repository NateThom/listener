;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::Gps)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'Gps (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::GPS")
  (make-package "GNSS_DRIVER::GPS"))

(in-package "ROS")
;;//! \htmlinclude Gps.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_driver::Gps
  :super ros::object
  :slots (_header _localization ))

(defmethod gnss_driver::Gps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:localization __localization) (instance gnss_driver::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _localization __localization)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:localization
   (&rest __localization)
   (if (keywordp (car __localization))
       (send* _localization __localization)
     (progn
       (if __localization (setq _localization (car __localization)))
       _localization)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gnss_driver/Pose _localization
    (send _localization :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_driver/Pose _localization
       (send _localization :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gnss_driver/Pose _localization
     (send _localization :deserialize buf ptr-) (incf ptr- (send _localization :serialization-length))
   ;;
   self)
  )

(setf (get gnss_driver::Gps :md5sum-) "88bde8f07fbec774b15776c61844ed3a")
(setf (get gnss_driver::Gps :datatype-) "gnss_driver/Gps")
(setf (get gnss_driver::Gps :definition-)
      "Header header
Pose localization

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: gnss_driver/Pose
PointENU position
Quaternion orientation
Point3D linear_velocity
Point3D linear_acceleration
Point3D angular_velocity

float64 heading
Point3D linear_acceleration_vrf
Point3D angular_velocity_vrf

================================================================================
MSG: gnss_driver/PointENU
float64 x
float64 y
float64 z

================================================================================
MSG: gnss_driver/Quaternion
float64 qx
float64 qy
float64 qz
float64 qw

================================================================================
MSG: gnss_driver/Point3D
float64 x
float64 y
float64 z

")



(provide :gnss_driver/Gps "88bde8f07fbec774b15776c61844ed3a")


