;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::Quaternion)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'Quaternion (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::QUATERNION")
  (make-package "GNSS_DRIVER::QUATERNION"))

(in-package "ROS")
;;//! \htmlinclude Quaternion.msg.html


(defclass gnss_driver::Quaternion
  :super ros::object
  :slots (_qx _qy _qz _qw ))

(defmethod gnss_driver::Quaternion
  (:init
   (&key
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:qw __qw) 0.0)
    )
   (send-super :init)
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _qw (float __qw))
   self)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:serialization-length
   ()
   (+
    ;; float64 _qx
    8
    ;; float64 _qy
    8
    ;; float64 _qz
    8
    ;; float64 _qw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qw
       (sys::poke _qw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _qx
     (setq _qx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qy
     (setq _qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qz
     (setq _qz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qw
     (setq _qw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_driver::Quaternion :md5sum-) "6e41723dd8df2efa508384c23a439e4c")
(setf (get gnss_driver::Quaternion :datatype-) "gnss_driver/Quaternion")
(setf (get gnss_driver::Quaternion :definition-)
      "float64 qx
float64 qy
float64 qz
float64 qw

")



(provide :gnss_driver/Quaternion "6e41723dd8df2efa508384c23a439e4c")


