;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::Ins)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'Ins (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::INS")
  (make-package "GNSS_DRIVER::INS"))

(in-package "ROS")
;;//! \htmlinclude Ins.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*INVALID*" (find-package "GNSS_DRIVER::INS"))
(shadow '*INVALID* (find-package "GNSS_DRIVER::INS"))
(defconstant gnss_driver::Ins::*INVALID* 0)
(intern "*CONVERGING*" (find-package "GNSS_DRIVER::INS"))
(shadow '*CONVERGING* (find-package "GNSS_DRIVER::INS"))
(defconstant gnss_driver::Ins::*CONVERGING* 1)
(intern "*GOOD*" (find-package "GNSS_DRIVER::INS"))
(shadow '*GOOD* (find-package "GNSS_DRIVER::INS"))
(defconstant gnss_driver::Ins::*GOOD* 2)
(defclass gnss_driver::Ins
  :super ros::object
  :slots (_header _measurement_time _type _position _euler_angles _linear_velocity _angular_velocity _linear_acceleration _position_covariance _euler_angles_covariance _linear_velocity_covariance _angular_velocity_covariance _linear_acceleration_covariance ))

(defmethod gnss_driver::Ins
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:measurement_time __measurement_time) 0.0)
    ((:type __type) 0)
    ((:position __position) (instance gnss_driver::PointLLH :init))
    ((:euler_angles __euler_angles) (instance gnss_driver::Point3D :init))
    ((:linear_velocity __linear_velocity) (instance gnss_driver::Point3D :init))
    ((:angular_velocity __angular_velocity) (instance gnss_driver::Point3D :init))
    ((:linear_acceleration __linear_acceleration) (instance gnss_driver::Point3D :init))
    ((:position_covariance __position_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:euler_angles_covariance __euler_angles_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:linear_velocity_covariance __linear_velocity_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angular_velocity_covariance __angular_velocity_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:linear_acceleration_covariance __linear_acceleration_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _measurement_time (float __measurement_time))
   (setq _type (round __type))
   (setq _position __position)
   (setq _euler_angles __euler_angles)
   (setq _linear_velocity __linear_velocity)
   (setq _angular_velocity __angular_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _position_covariance __position_covariance)
   (setq _euler_angles_covariance __euler_angles_covariance)
   (setq _linear_velocity_covariance __linear_velocity_covariance)
   (setq _angular_velocity_covariance __angular_velocity_covariance)
   (setq _linear_acceleration_covariance __linear_acceleration_covariance)
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:euler_angles
   (&rest __euler_angles)
   (if (keywordp (car __euler_angles))
       (send* _euler_angles __euler_angles)
     (progn
       (if __euler_angles (setq _euler_angles (car __euler_angles)))
       _euler_angles)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:euler_angles_covariance
   (&optional __euler_angles_covariance)
   (if __euler_angles_covariance (setq _euler_angles_covariance __euler_angles_covariance)) _euler_angles_covariance)
  (:linear_velocity_covariance
   (&optional __linear_velocity_covariance)
   (if __linear_velocity_covariance (setq _linear_velocity_covariance __linear_velocity_covariance)) _linear_velocity_covariance)
  (:angular_velocity_covariance
   (&optional __angular_velocity_covariance)
   (if __angular_velocity_covariance (setq _angular_velocity_covariance __angular_velocity_covariance)) _angular_velocity_covariance)
  (:linear_acceleration_covariance
   (&optional __linear_acceleration_covariance)
   (if __linear_acceleration_covariance (setq _linear_acceleration_covariance __linear_acceleration_covariance)) _linear_acceleration_covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _measurement_time
    8
    ;; uint32 _type
    4
    ;; gnss_driver/PointLLH _position
    (send _position :serialization-length)
    ;; gnss_driver/Point3D _euler_angles
    (send _euler_angles :serialization-length)
    ;; gnss_driver/Point3D _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; gnss_driver/Point3D _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; gnss_driver/Point3D _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float32[] _position_covariance
    (* 4    (length _position_covariance)) 4
    ;; float32[] _euler_angles_covariance
    (* 4    (length _euler_angles_covariance)) 4
    ;; float32[] _linear_velocity_covariance
    (* 4    (length _linear_velocity_covariance)) 4
    ;; float32[] _angular_velocity_covariance
    (* 4    (length _angular_velocity_covariance)) 4
    ;; float32[] _linear_acceleration_covariance
    (* 4    (length _linear_acceleration_covariance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _measurement_time
       (sys::poke _measurement_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _type
       (write-long _type s)
     ;; gnss_driver/PointLLH _position
       (send _position :serialize s)
     ;; gnss_driver/Point3D _euler_angles
       (send _euler_angles :serialize s)
     ;; gnss_driver/Point3D _linear_velocity
       (send _linear_velocity :serialize s)
     ;; gnss_driver/Point3D _angular_velocity
       (send _angular_velocity :serialize s)
     ;; gnss_driver/Point3D _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float32[] _position_covariance
     (write-long (length _position_covariance) s)
     (dotimes (i (length _position_covariance))
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _euler_angles_covariance
     (write-long (length _euler_angles_covariance) s)
     (dotimes (i (length _euler_angles_covariance))
       (sys::poke (elt _euler_angles_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _linear_velocity_covariance
     (write-long (length _linear_velocity_covariance) s)
     (dotimes (i (length _linear_velocity_covariance))
       (sys::poke (elt _linear_velocity_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _angular_velocity_covariance
     (write-long (length _angular_velocity_covariance) s)
     (dotimes (i (length _angular_velocity_covariance))
       (sys::poke (elt _angular_velocity_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _linear_acceleration_covariance
     (write-long (length _linear_acceleration_covariance) s)
     (dotimes (i (length _linear_acceleration_covariance))
       (sys::poke (elt _linear_acceleration_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _measurement_time
     (setq _measurement_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; gnss_driver/PointLLH _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; gnss_driver/Point3D _euler_angles
     (send _euler_angles :deserialize buf ptr-) (incf ptr- (send _euler_angles :serialization-length))
   ;; gnss_driver/Point3D _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; gnss_driver/Point3D _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; gnss_driver/Point3D _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float32[] _position_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _euler_angles_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _euler_angles_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _euler_angles_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _linear_velocity_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _linear_velocity_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _linear_velocity_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _angular_velocity_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angular_velocity_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angular_velocity_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _linear_acceleration_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _linear_acceleration_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _linear_acceleration_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get gnss_driver::Ins :md5sum-) "fa4f9086662ec13f5100709ba926f39b")
(setf (get gnss_driver::Ins :datatype-) "gnss_driver/Ins")
(setf (get gnss_driver::Ins :definition-)
      "Header header
float64 measurement_time

uint32 INVALID=0
uint32 CONVERGING=1
uint32 GOOD=2

uint32 type
PointLLH position
Point3D euler_angles
Point3D linear_velocity
Point3D angular_velocity
Point3D linear_acceleration

float32[] position_covariance
float32[] euler_angles_covariance
float32[] linear_velocity_covariance
float32[] angular_velocity_covariance
float32[] linear_acceleration_covariance

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



(provide :gnss_driver/Ins "fa4f9086662ec13f5100709ba926f39b")


