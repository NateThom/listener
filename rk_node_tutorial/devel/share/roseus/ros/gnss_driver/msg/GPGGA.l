;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::GPGGA)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'GPGGA (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::GPGGA")
  (make-package "GNSS_DRIVER::GPGGA"))

(in-package "ROS")
;;//! \htmlinclude GPGGA.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_driver::GPGGA
  :super ros::object
  :slots (_header _gpgga ))

(defmethod gnss_driver::GPGGA
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gpgga __gpgga) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _gpgga (string __gpgga))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gpgga
   (&optional __gpgga)
   (if __gpgga (setq _gpgga __gpgga)) _gpgga)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _gpgga
    4 (length _gpgga)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _gpgga
       (write-long (length _gpgga) s) (princ _gpgga s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _gpgga
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gpgga (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gnss_driver::GPGGA :md5sum-) "8af5a926d1265c407ee0b416b249fdf2")
(setf (get gnss_driver::GPGGA :datatype-) "gnss_driver/GPGGA")
(setf (get gnss_driver::GPGGA :definition-)
      "Header header
string gpgga

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



(provide :gnss_driver/GPGGA "8af5a926d1265c407ee0b416b249fdf2")


