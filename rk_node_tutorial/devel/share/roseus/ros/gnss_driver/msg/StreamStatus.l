;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::StreamStatus)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'StreamStatus (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::STREAMSTATUS")
  (make-package "GNSS_DRIVER::STREAMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude StreamStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DISCONNECTED*" (find-package "GNSS_DRIVER::STREAMSTATUS"))
(shadow '*DISCONNECTED* (find-package "GNSS_DRIVER::STREAMSTATUS"))
(defconstant gnss_driver::StreamStatus::*DISCONNECTED* 0)
(intern "*CONNECTED*" (find-package "GNSS_DRIVER::STREAMSTATUS"))
(shadow '*CONNECTED* (find-package "GNSS_DRIVER::STREAMSTATUS"))
(defconstant gnss_driver::StreamStatus::*CONNECTED* 1)
(defclass gnss_driver::StreamStatus
  :super ros::object
  :slots (_header _ins_stream_type _rtk_stream_in_type _rtk_stream_out_type ))

(defmethod gnss_driver::StreamStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ins_stream_type __ins_stream_type) 0)
    ((:rtk_stream_in_type __rtk_stream_in_type) 0)
    ((:rtk_stream_out_type __rtk_stream_out_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ins_stream_type (round __ins_stream_type))
   (setq _rtk_stream_in_type (round __rtk_stream_in_type))
   (setq _rtk_stream_out_type (round __rtk_stream_out_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ins_stream_type
   (&optional __ins_stream_type)
   (if __ins_stream_type (setq _ins_stream_type __ins_stream_type)) _ins_stream_type)
  (:rtk_stream_in_type
   (&optional __rtk_stream_in_type)
   (if __rtk_stream_in_type (setq _rtk_stream_in_type __rtk_stream_in_type)) _rtk_stream_in_type)
  (:rtk_stream_out_type
   (&optional __rtk_stream_out_type)
   (if __rtk_stream_out_type (setq _rtk_stream_out_type __rtk_stream_out_type)) _rtk_stream_out_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _ins_stream_type
    4
    ;; uint32 _rtk_stream_in_type
    4
    ;; uint32 _rtk_stream_out_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _ins_stream_type
       (write-long _ins_stream_type s)
     ;; uint32 _rtk_stream_in_type
       (write-long _rtk_stream_in_type s)
     ;; uint32 _rtk_stream_out_type
       (write-long _rtk_stream_out_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _ins_stream_type
     (setq _ins_stream_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _rtk_stream_in_type
     (setq _rtk_stream_in_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _rtk_stream_out_type
     (setq _rtk_stream_out_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_driver::StreamStatus :md5sum-) "684d0fb3e4841d4ebe4b6718a9cbfae6")
(setf (get gnss_driver::StreamStatus :datatype-) "gnss_driver/StreamStatus")
(setf (get gnss_driver::StreamStatus :definition-)
      "Header header

uint32 DISCONNECTED=0
uint32 CONNECTED=1

uint32 ins_stream_type
uint32 rtk_stream_in_type
uint32 rtk_stream_out_type

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



(provide :gnss_driver/StreamStatus "684d0fb3e4841d4ebe4b6718a9cbfae6")


