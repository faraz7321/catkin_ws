;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::WaveForm)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'WaveForm (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::WAVEFORM")
  (make-package "BEGINNER_TUTORIALS::WAVEFORM"))

(in-package "ROS")
;;//! \htmlinclude WaveForm.msg.html


(defclass beginner_tutorials::WaveForm
  :super ros::object
  :slots (_period _magnitude _phase ))

(defmethod beginner_tutorials::WaveForm
  (:init
   (&key
    ((:period __period) 0.0)
    ((:magnitude __magnitude) 0.0)
    ((:phase __phase) 0.0)
    )
   (send-super :init)
   (setq _period (float __period))
   (setq _magnitude (float __magnitude))
   (setq _phase (float __phase))
   self)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:serialization-length
   ()
   (+
    ;; float64 _period
    8
    ;; float64 _magnitude
    8
    ;; float64 _phase
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _period
       (sys::poke _period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phase
       (sys::poke _phase (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _period
     (setq _period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _magnitude
     (setq _magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phase
     (setq _phase (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get beginner_tutorials::WaveForm :md5sum-) "deb412a7e1a8dc5c76861766bd0a5ede")
(setf (get beginner_tutorials::WaveForm :datatype-) "beginner_tutorials/WaveForm")
(setf (get beginner_tutorials::WaveForm :definition-)
      "float64 period
float64 magnitude
float64 phase

")



(provide :beginner_tutorials/WaveForm "deb412a7e1a8dc5c76861766bd0a5ede")


