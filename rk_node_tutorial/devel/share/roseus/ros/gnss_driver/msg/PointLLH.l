;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::PointLLH)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'PointLLH (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::POINTLLH")
  (make-package "GNSS_DRIVER::POINTLLH"))

(in-package "ROS")
;;//! \htmlinclude PointLLH.msg.html


(defclass gnss_driver::PointLLH
  :super ros::object
  :slots (_lon _lat _height ))

(defmethod gnss_driver::PointLLH
  (:init
   (&key
    ((:lon __lon) 0.0)
    ((:lat __lat) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _lon (float __lon))
   (setq _lat (float __lat))
   (setq _height (float __height))
   self)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float64 _lon
    8
    ;; float64 _lat
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_driver::PointLLH :md5sum-) "360f7307744ede4ebecd668b1e5c39fc")
(setf (get gnss_driver::PointLLH :datatype-) "gnss_driver/PointLLH")
(setf (get gnss_driver::PointLLH :definition-)
      "float64 lon
float64 lat
float64 height

")



(provide :gnss_driver/PointLLH "360f7307744ede4ebecd668b1e5c39fc")


