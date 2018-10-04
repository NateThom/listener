;; Auto-generated. Do not edit!


(when (boundp 'gnss_driver::RangeInfo)
  (if (not (find-package "GNSS_DRIVER"))
    (make-package "GNSS_DRIVER"))
  (shadow 'RangeInfo (find-package "GNSS_DRIVER")))
(unless (find-package "GNSS_DRIVER::RANGEINFO")
  (make-package "GNSS_DRIVER::RANGEINFO"))

(in-package "ROS")
;;//! \htmlinclude RangeInfo.msg.html


(intern "*GPS*" (find-package "GNSS_DRIVER::RANGEINFO"))
(shadow '*GPS* (find-package "GNSS_DRIVER::RANGEINFO"))
(defconstant gnss_driver::RangeInfo::*GPS* 0)
(intern "*GLONASS*" (find-package "GNSS_DRIVER::RANGEINFO"))
(shadow '*GLONASS* (find-package "GNSS_DRIVER::RANGEINFO"))
(defconstant gnss_driver::RangeInfo::*GLONASS* 1)
(intern "*SBAS*" (find-package "GNSS_DRIVER::RANGEINFO"))
(shadow '*SBAS* (find-package "GNSS_DRIVER::RANGEINFO"))
(defconstant gnss_driver::RangeInfo::*SBAS* 2)
(intern "*GALILEO*" (find-package "GNSS_DRIVER::RANGEINFO"))
(shadow '*GALILEO* (find-package "GNSS_DRIVER::RANGEINFO"))
(defconstant gnss_driver::RangeInfo::*GALILEO* 3)
(intern "*BEIDOU*" (find-package "GNSS_DRIVER::RANGEINFO"))
(shadow '*BEIDOU* (find-package "GNSS_DRIVER::RANGEINFO"))
(defconstant gnss_driver::RangeInfo::*BEIDOU* 4)
(intern "*QZSS*" (find-package "GNSS_DRIVER::RANGEINFO"))
(shadow '*QZSS* (find-package "GNSS_DRIVER::RANGEINFO"))
(defconstant gnss_driver::RangeInfo::*QZSS* 5)
(defclass gnss_driver::RangeInfo
  :super ros::object
  :slots (_constellation _prn _carrier_frequency _pseudorange _pseudorange_std_dev _carrier_phase _carrier_phase_std_dev _doppler _doppler_std_dev _cno _lock_time ))

(defmethod gnss_driver::RangeInfo
  (:init
   (&key
    ((:constellation __constellation) 0)
    ((:prn __prn) 0)
    ((:carrier_frequency __carrier_frequency) 0)
    ((:pseudorange __pseudorange) 0.0)
    ((:pseudorange_std_dev __pseudorange_std_dev) 0.0)
    ((:carrier_phase __carrier_phase) 0.0)
    ((:carrier_phase_std_dev __carrier_phase_std_dev) 0.0)
    ((:doppler __doppler) 0.0)
    ((:doppler_std_dev __doppler_std_dev) 0.0)
    ((:cno __cno) 0)
    ((:lock_time __lock_time) 0)
    )
   (send-super :init)
   (setq _constellation (round __constellation))
   (setq _prn (round __prn))
   (setq _carrier_frequency (round __carrier_frequency))
   (setq _pseudorange (float __pseudorange))
   (setq _pseudorange_std_dev (float __pseudorange_std_dev))
   (setq _carrier_phase (float __carrier_phase))
   (setq _carrier_phase_std_dev (float __carrier_phase_std_dev))
   (setq _doppler (float __doppler))
   (setq _doppler_std_dev (float __doppler_std_dev))
   (setq _cno (round __cno))
   (setq _lock_time (round __lock_time))
   self)
  (:constellation
   (&optional __constellation)
   (if __constellation (setq _constellation __constellation)) _constellation)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:carrier_frequency
   (&optional __carrier_frequency)
   (if __carrier_frequency (setq _carrier_frequency __carrier_frequency)) _carrier_frequency)
  (:pseudorange
   (&optional __pseudorange)
   (if __pseudorange (setq _pseudorange __pseudorange)) _pseudorange)
  (:pseudorange_std_dev
   (&optional __pseudorange_std_dev)
   (if __pseudorange_std_dev (setq _pseudorange_std_dev __pseudorange_std_dev)) _pseudorange_std_dev)
  (:carrier_phase
   (&optional __carrier_phase)
   (if __carrier_phase (setq _carrier_phase __carrier_phase)) _carrier_phase)
  (:carrier_phase_std_dev
   (&optional __carrier_phase_std_dev)
   (if __carrier_phase_std_dev (setq _carrier_phase_std_dev __carrier_phase_std_dev)) _carrier_phase_std_dev)
  (:doppler
   (&optional __doppler)
   (if __doppler (setq _doppler __doppler)) _doppler)
  (:doppler_std_dev
   (&optional __doppler_std_dev)
   (if __doppler_std_dev (setq _doppler_std_dev __doppler_std_dev)) _doppler_std_dev)
  (:cno
   (&optional __cno)
   (if __cno (setq _cno __cno)) _cno)
  (:lock_time
   (&optional __lock_time)
   (if __lock_time (setq _lock_time __lock_time)) _lock_time)
  (:serialization-length
   ()
   (+
    ;; int32 _constellation
    4
    ;; int32 _prn
    4
    ;; uint32 _carrier_frequency
    4
    ;; float64 _pseudorange
    8
    ;; float32 _pseudorange_std_dev
    4
    ;; float64 _carrier_phase
    8
    ;; float32 _carrier_phase_std_dev
    4
    ;; float32 _doppler
    4
    ;; float32 _doppler_std_dev
    4
    ;; int32 _cno
    4
    ;; int32 _lock_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _constellation
       (write-long _constellation s)
     ;; int32 _prn
       (write-long _prn s)
     ;; uint32 _carrier_frequency
       (write-long _carrier_frequency s)
     ;; float64 _pseudorange
       (sys::poke _pseudorange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _pseudorange_std_dev
       (sys::poke _pseudorange_std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _carrier_phase
       (sys::poke _carrier_phase (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _carrier_phase_std_dev
       (sys::poke _carrier_phase_std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _doppler
       (sys::poke _doppler (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _doppler_std_dev
       (sys::poke _doppler_std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _cno
       (write-long _cno s)
     ;; int32 _lock_time
       (write-long _lock_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _constellation
     (setq _constellation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _prn
     (setq _prn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _carrier_frequency
     (setq _carrier_frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _pseudorange
     (setq _pseudorange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _pseudorange_std_dev
     (setq _pseudorange_std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _carrier_phase
     (setq _carrier_phase (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _carrier_phase_std_dev
     (setq _carrier_phase_std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _doppler
     (setq _doppler (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _doppler_std_dev
     (setq _doppler_std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _cno
     (setq _cno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lock_time
     (setq _lock_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_driver::RangeInfo :md5sum-) "6792b8c07d815111a6e39320c1f1b541")
(setf (get gnss_driver::RangeInfo :datatype-) "gnss_driver/RangeInfo")
(setf (get gnss_driver::RangeInfo :definition-)
      "int32 GPS=0
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



(provide :gnss_driver/RangeInfo "6792b8c07d815111a6e39320c1f1b541")


