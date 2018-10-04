;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::InsStatus)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'InsStatus (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::INSSTATUS")
  (make-package "GNSS_DRIVER::INSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude InsStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*INVALID*" (find-package "GNSS_DRIVER::INSSTATUS"))
(shadow '*INVALID* (find-package "GNSS_DRIVER::INSSTATUS"))
(defconstant gnss_driver::InsStatus::*INVALID* 0)
(intern "*CONVERGING*" (find-package "GNSS_DRIVER::INSSTATUS"))
(shadow '*CONVERGING* (find-package "GNSS_DRIVER::INSSTATUS"))
(defconstant gnss_driver::InsStatus::*CONVERGING* 1)
(intern "*GOOD*" (find-package "GNSS_DRIVER::INSSTATUS"))
(shadow '*GOOD* (find-package "GNSS_DRIVER::INSSTATUS"))
(defconstant gnss_driver::InsStatus::*GOOD* 2)
(defclass gnss_driver::InsStatus
  :super ros::object
  :slots (_header _type ))

(defmethod gnss_driver::InsStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_driver::InsStatus :md5sum-) "74371ad6e1867e22a3c23379ae98b03d")
(setf (get gnss_driver::InsStatus :datatype-) "gnss_driver/InsStatus")
(setf (get gnss_driver::InsStatus :definition-)
      "Header header

uint32 INVALID=0
uint32 CONVERGING=1
uint32 GOOD=2

uint32 type

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

")



(provide :gnss_driver/InsStatus "74371ad6e1867e22a3c23379ae98b03d")


