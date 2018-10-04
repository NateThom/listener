;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::Gnss)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'Gnss (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::GNSS")
  (make-package "GNSS_DRIVER::GNSS"))

(in-package "ROS")
;;//! \htmlinclude Gnss.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*INVALID*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*INVALID* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*INVALID* 0)
(intern "*PROPAGATED*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*PROPAGATED* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*PROPAGATED* 1)
(intern "*SINGLE*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*SINGLE* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*SINGLE* 2)
(intern "*PSRDIFF*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*PSRDIFF* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*PSRDIFF* 3)
(intern "*PPP*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*PPP* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*PPP* 4)
(intern "*RTK_FLOAT*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*RTK_FLOAT* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*RTK_FLOAT* 5)
(intern "*RTK_INTEGER*" (find-package "GNSS_DRIVER::GNSS"))
(shadow '*RTK_INTEGER* (find-package "GNSS_DRIVER::GNSS"))
(defconstant gnss_driver::Gnss::*RTK_INTEGER* 6)
(defclass gnss_driver::Gnss
  :super ros::object
  :slots (_header _measurement_time _velocity_latency _position _position_std_dev _linear_velocity _linear_velocity_std_dev _num_sats _type _solution_status _position_type ))

(defmethod gnss_driver::Gnss
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:measurement_time __measurement_time) 0.0)
    ((:velocity_latency __velocity_latency) 0.0)
    ((:position __position) (instance gnss_driver::PointLLH :init))
    ((:position_std_dev __position_std_dev) (instance gnss_driver::Point3D :init))
    ((:linear_velocity __linear_velocity) (instance gnss_driver::Point3D :init))
    ((:linear_velocity_std_dev __linear_velocity_std_dev) (instance gnss_driver::Point3D :init))
    ((:num_sats __num_sats) 0)
    ((:type __type) 0)
    ((:solution_status __solution_status) 0)
    ((:position_type __position_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _measurement_time (float __measurement_time))
   (setq _velocity_latency (float __velocity_latency))
   (setq _position __position)
   (setq _position_std_dev __position_std_dev)
   (setq _linear_velocity __linear_velocity)
   (setq _linear_velocity_std_dev __linear_velocity_std_dev)
   (setq _num_sats (round __num_sats))
   (setq _type (round __type))
   (setq _solution_status (round __solution_status))
   (setq _position_type (round __position_type))
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
  (:velocity_latency
   (&optional __velocity_latency)
   (if __velocity_latency (setq _velocity_latency __velocity_latency)) _velocity_latency)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:position_std_dev
   (&rest __position_std_dev)
   (if (keywordp (car __position_std_dev))
       (send* _position_std_dev __position_std_dev)
     (progn
       (if __position_std_dev (setq _position_std_dev (car __position_std_dev)))
       _position_std_dev)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:linear_velocity_std_dev
   (&rest __linear_velocity_std_dev)
   (if (keywordp (car __linear_velocity_std_dev))
       (send* _linear_velocity_std_dev __linear_velocity_std_dev)
     (progn
       (if __linear_velocity_std_dev (setq _linear_velocity_std_dev (car __linear_velocity_std_dev)))
       _linear_velocity_std_dev)))
  (:num_sats
   (&optional __num_sats)
   (if __num_sats (setq _num_sats __num_sats)) _num_sats)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:solution_status
   (&optional __solution_status)
   (if __solution_status (setq _solution_status __solution_status)) _solution_status)
  (:position_type
   (&optional __position_type)
   (if __position_type (setq _position_type __position_type)) _position_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _measurement_time
    8
    ;; float32 _velocity_latency
    4
    ;; gnss_driver/PointLLH _position
    (send _position :serialization-length)
    ;; gnss_driver/Point3D _position_std_dev
    (send _position_std_dev :serialization-length)
    ;; gnss_driver/Point3D _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; gnss_driver/Point3D _linear_velocity_std_dev
    (send _linear_velocity_std_dev :serialization-length)
    ;; int32 _num_sats
    4
    ;; int32 _type
    4
    ;; uint32 _solution_status
    4
    ;; uint32 _position_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _measurement_time
       (sys::poke _measurement_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _velocity_latency
       (sys::poke _velocity_latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; gnss_driver/PointLLH _position
       (send _position :serialize s)
     ;; gnss_driver/Point3D _position_std_dev
       (send _position_std_dev :serialize s)
     ;; gnss_driver/Point3D _linear_velocity
       (send _linear_velocity :serialize s)
     ;; gnss_driver/Point3D _linear_velocity_std_dev
       (send _linear_velocity_std_dev :serialize s)
     ;; int32 _num_sats
       (write-long _num_sats s)
     ;; int32 _type
       (write-long _type s)
     ;; uint32 _solution_status
       (write-long _solution_status s)
     ;; uint32 _position_type
       (write-long _position_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _measurement_time
     (setq _measurement_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _velocity_latency
     (setq _velocity_latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; gnss_driver/PointLLH _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; gnss_driver/Point3D _position_std_dev
     (send _position_std_dev :deserialize buf ptr-) (incf ptr- (send _position_std_dev :serialization-length))
   ;; gnss_driver/Point3D _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; gnss_driver/Point3D _linear_velocity_std_dev
     (send _linear_velocity_std_dev :deserialize buf ptr-) (incf ptr- (send _linear_velocity_std_dev :serialization-length))
   ;; int32 _num_sats
     (setq _num_sats (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _solution_status
     (setq _solution_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _position_type
     (setq _position_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_driver::Gnss :md5sum-) "de82954b18f7418bd62c4ba27cf8d96f")
(setf (get gnss_driver::Gnss :datatype-) "gnss_driver/Gnss")
(setf (get gnss_driver::Gnss :definition-)
      "Header header
float64 measurement_time
float32 velocity_latency
PointLLH position
Point3D position_std_dev
Point3D linear_velocity
Point3D linear_velocity_std_dev
int32 num_sats

int32 INVALID=0
int32 PROPAGATED=1
int32 SINGLE=2
int32 PSRDIFF=3
int32 PPP=4
int32 RTK_FLOAT=5
int32 RTK_INTEGER=6

int32 type
uint32 solution_status
uint32 position_type

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
MSG: gnss_driver/PointLLH
float64 lon
float64 lat
float64 height

================================================================================
MSG: gnss_driver/Point3D
float64 x
float64 y
float64 z

")



(provide :gnss_driver/Gnss "de82954b18f7418bd62c4ba27cf8d96f")


