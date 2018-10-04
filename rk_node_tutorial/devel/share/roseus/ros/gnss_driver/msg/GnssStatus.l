;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::GnssStatus)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'GnssStatus (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::GNSSSTATUS")
  (make-package "GNSS_DRIVER::GNSSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GnssStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_driver::GnssStatus
  :super ros::object
  :slots (_header _solution_completed _solution_status _position_type _num_sats ))

(defmethod gnss_driver::GnssStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:solution_completed __solution_completed) nil)
    ((:solution_status __solution_status) 0)
    ((:position_type __position_type) 0)
    ((:num_sats __num_sats) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _solution_completed __solution_completed)
   (setq _solution_status (round __solution_status))
   (setq _position_type (round __position_type))
   (setq _num_sats (round __num_sats))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:solution_completed
   (&optional __solution_completed)
   (if __solution_completed (setq _solution_completed __solution_completed)) _solution_completed)
  (:solution_status
   (&optional __solution_status)
   (if __solution_status (setq _solution_status __solution_status)) _solution_status)
  (:position_type
   (&optional __position_type)
   (if __position_type (setq _position_type __position_type)) _position_type)
  (:num_sats
   (&optional __num_sats)
   (if __num_sats (setq _num_sats __num_sats)) _num_sats)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _solution_completed
    1
    ;; uint32 _solution_status
    4
    ;; uint32 _position_type
    4
    ;; int32 _num_sats
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _solution_completed
       (if _solution_completed (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _solution_status
       (write-long _solution_status s)
     ;; uint32 _position_type
       (write-long _position_type s)
     ;; int32 _num_sats
       (write-long _num_sats s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _solution_completed
     (setq _solution_completed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _solution_status
     (setq _solution_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _position_type
     (setq _position_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_sats
     (setq _num_sats (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_driver::GnssStatus :md5sum-) "fcc70857aecd5140aa4f8b0640315349")
(setf (get gnss_driver::GnssStatus :datatype-) "gnss_driver/GnssStatus")
(setf (get gnss_driver::GnssStatus :definition-)
      "Header header
bool solution_completed
uint32 solution_status
uint32 position_type
int32 num_sats

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



(provide :gnss_driver/GnssStatus "fcc70857aecd5140aa4f8b0640315349")


