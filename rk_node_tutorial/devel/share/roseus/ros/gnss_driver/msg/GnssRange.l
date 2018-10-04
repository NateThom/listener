;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::GnssRange)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'GnssRange (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::GNSSRANGE")
  (make-package "GNSS_DRIVER::GNSSRANGE"))

(in-package "ROS")
;;//! \htmlinclude GnssRange.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_driver::GnssRange
  :super ros::object
  :slots (_header _measurement_time _ranges ))

(defmethod gnss_driver::GnssRange
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:measurement_time __measurement_time) 0.0)
    ((:ranges __ranges) (let (r) (dotimes (i 0) (push (instance gnss_driver::RangeInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _measurement_time (float __measurement_time))
   (setq _ranges __ranges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:measurement_time
   (&optional __measurement_time)
   (if __measurement_time (setq _measurement_time __measurement_time)) _measurement_time)
  (:ranges
   (&rest __ranges)
   (if (keywordp (car __ranges))
       (send* _ranges __ranges)
     (progn
       (if __ranges (setq _ranges (car __ranges)))
       _ranges)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _measurement_time
    8
    ;; gnss_driver/RangeInfo[] _ranges
    (apply #'+ (send-all _ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _measurement_time
       (sys::poke _measurement_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; gnss_driver/RangeInfo[] _ranges
     (write-long (length _ranges) s)
     (dolist (elem _ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _measurement_time
     (setq _measurement_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; gnss_driver/RangeInfo[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (let (r) (dotimes (i n) (push (instance gnss_driver::RangeInfo :init) r)) r))
     (dolist (elem- _ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_driver::GnssRange :md5sum-) "98189513fbb1deb4e990550a5fe42c3d")
(setf (get gnss_driver::GnssRange :datatype-) "gnss_driver/GnssRange")
(setf (get gnss_driver::GnssRange :definition-)
      "Header header
float64 measurement_time
RangeInfo[] ranges
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
MSG: gnss_driver/RangeInfo
int32 GPS=0
int32 GLONASS=1
int32 SBAS=2
int32 GALILEO=3
int32 BEIDOU=4
int32 QZSS=5

int32 constellation
int32 prn

uint32 carrier_frequency
float64 pseudorange
float32 pseudorange_std_dev
float64 carrier_phase
float32 carrier_phase_std_dev
float32 doppler
float32 doppler_std_dev
int32 cno
int32 lock_time

")



(provide :gnss_driver/GnssRange "98189513fbb1deb4e990550a5fe42c3d")


