;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::Pose)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'Pose (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::POSE")
  (make-package "GNSS_DRIVER::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass gnss_driver::Pose
  :super ros::object
  :slots (_position _orientation _linear_velocity _linear_acceleration _angular_velocity _heading _linear_acceleration_vrf _angular_velocity_vrf ))

(defmethod gnss_driver::Pose
  (:init
   (&key
    ((:position __position) (instance gnss_driver::PointENU :init))
    ((:orientation __orientation) (instance gnss_driver::Quaternion :init))
    ((:linear_velocity __linear_velocity) (instance gnss_driver::Point3D :init))
    ((:linear_acceleration __linear_acceleration) (instance gnss_driver::Point3D :init))
    ((:angular_velocity __angular_velocity) (instance gnss_driver::Point3D :init))
    ((:heading __heading) 0.0)
    ((:linear_acceleration_vrf __linear_acceleration_vrf) (instance gnss_driver::Point3D :init))
    ((:angular_velocity_vrf __angular_velocity_vrf) (instance gnss_driver::Point3D :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _linear_velocity __linear_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _heading (float __heading))
   (setq _linear_acceleration_vrf __linear_acceleration_vrf)
   (setq _angular_velocity_vrf __angular_velocity_vrf)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:linear_acceleration_vrf
   (&rest __linear_acceleration_vrf)
   (if (keywordp (car __linear_acceleration_vrf))
       (send* _linear_acceleration_vrf __linear_acceleration_vrf)
     (progn
       (if __linear_acceleration_vrf (setq _linear_acceleration_vrf (car __linear_acceleration_vrf)))
       _linear_acceleration_vrf)))
  (:angular_velocity_vrf
   (&rest __angular_velocity_vrf)
   (if (keywordp (car __angular_velocity_vrf))
       (send* _angular_velocity_vrf __angular_velocity_vrf)
     (progn
       (if __angular_velocity_vrf (setq _angular_velocity_vrf (car __angular_velocity_vrf)))
       _angular_velocity_vrf)))
  (:serialization-length
   ()
   (+
    ;; gnss_driver/PointENU _position
    (send _position :serialization-length)
    ;; gnss_driver/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; gnss_driver/Point3D _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; gnss_driver/Point3D _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; gnss_driver/Point3D _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; float64 _heading
    8
    ;; gnss_driver/Point3D _linear_acceleration_vrf
    (send _linear_acceleration_vrf :serialization-length)
    ;; gnss_driver/Point3D _angular_velocity_vrf
    (send _angular_velocity_vrf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gnss_driver/PointENU _position
       (send _position :serialize s)
     ;; gnss_driver/Quaternion _orientation
       (send _orientation :serialize s)
     ;; gnss_driver/Point3D _linear_velocity
       (send _linear_velocity :serialize s)
     ;; gnss_driver/Point3D _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; gnss_driver/Point3D _angular_velocity
       (send _angular_velocity :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; gnss_driver/Point3D _linear_acceleration_vrf
       (send _linear_acceleration_vrf :serialize s)
     ;; gnss_driver/Point3D _angular_velocity_vrf
       (send _angular_velocity_vrf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gnss_driver/PointENU _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; gnss_driver/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; gnss_driver/Point3D _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; gnss_driver/Point3D _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; gnss_driver/Point3D _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; gnss_driver/Point3D _linear_acceleration_vrf
     (send _linear_acceleration_vrf :deserialize buf ptr-) (incf ptr- (send _linear_acceleration_vrf :serialization-length))
   ;; gnss_driver/Point3D _angular_velocity_vrf
     (send _angular_velocity_vrf :deserialize buf ptr-) (incf ptr- (send _angular_velocity_vrf :serialization-length))
   ;;
   self)
  )

(setf (get gnss_driver::Pose :md5sum-) "f88501e9ff1cc28ee87abe3d800d0709")
(setf (get gnss_driver::Pose :datatype-) "gnss_driver/Pose")
(setf (get gnss_driver::Pose :definition-)
      "PointENU position
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



(provide :gnss_driver/Pose "f88501e9ff1cc28ee87abe3d800d0709")


