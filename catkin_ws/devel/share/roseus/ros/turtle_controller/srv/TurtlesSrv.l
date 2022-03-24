;; Auto-generated. Do not edit!


(when (boundp 'turtle_controller::TurtlesSrv)
  (if (not (find-package "TURTLE_CONTROLLER"))
    (make-package "TURTLE_CONTROLLER"))
  (shadow 'TurtlesSrv (find-package "TURTLE_CONTROLLER")))
(unless (find-package "TURTLE_CONTROLLER::TURTLESSRV")
  (make-package "TURTLE_CONTROLLER::TURTLESSRV"))
(unless (find-package "TURTLE_CONTROLLER::TURTLESSRVREQUEST")
  (make-package "TURTLE_CONTROLLER::TURTLESSRVREQUEST"))
(unless (find-package "TURTLE_CONTROLLER::TURTLESSRVRESPONSE")
  (make-package "TURTLE_CONTROLLER::TURTLESSRVRESPONSE"))

(in-package "ROS")





(defclass turtle_controller::TurtlesSrvRequest
  :super ros::object
  :slots (_name ))

(defmethod turtle_controller::TurtlesSrvRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtle_controller::TurtlesSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod turtle_controller::TurtlesSrvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtle_controller::TurtlesSrv
  :super ros::object
  :slots ())

(setf (get turtle_controller::TurtlesSrv :md5sum-) "7bcae82d9c56d7e11c9ed0787b32d9b5")
(setf (get turtle_controller::TurtlesSrv :datatype-) "turtle_controller/TurtlesSrv")
(setf (get turtle_controller::TurtlesSrv :request) turtle_controller::TurtlesSrvRequest)
(setf (get turtle_controller::TurtlesSrv :response) turtle_controller::TurtlesSrvResponse)

(defmethod turtle_controller::TurtlesSrvRequest
  (:response () (instance turtle_controller::TurtlesSrvResponse :init)))

(setf (get turtle_controller::TurtlesSrvRequest :md5sum-) "7bcae82d9c56d7e11c9ed0787b32d9b5")
(setf (get turtle_controller::TurtlesSrvRequest :datatype-) "turtle_controller/TurtlesSrvRequest")
(setf (get turtle_controller::TurtlesSrvRequest :definition-)
      "string name
---
string result

")

(setf (get turtle_controller::TurtlesSrvResponse :md5sum-) "7bcae82d9c56d7e11c9ed0787b32d9b5")
(setf (get turtle_controller::TurtlesSrvResponse :datatype-) "turtle_controller/TurtlesSrvResponse")
(setf (get turtle_controller::TurtlesSrvResponse :definition-)
      "string name
---
string result

")



(provide :turtle_controller/TurtlesSrv "7bcae82d9c56d7e11c9ed0787b32d9b5")


