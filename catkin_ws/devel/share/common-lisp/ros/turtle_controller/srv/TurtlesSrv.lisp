; Auto-generated. Do not edit!


(cl:in-package turtle_controller-srv)


;//! \htmlinclude TurtlesSrv-request.msg.html

(cl:defclass <TurtlesSrv-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass TurtlesSrv-request (<TurtlesSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlesSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlesSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_controller-srv:<TurtlesSrv-request> is deprecated: use turtle_controller-srv:TurtlesSrv-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TurtlesSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_controller-srv:name-val is deprecated.  Use turtle_controller-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlesSrv-request>) ostream)
  "Serializes a message object of type '<TurtlesSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlesSrv-request>) istream)
  "Deserializes a message object of type '<TurtlesSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlesSrv-request>)))
  "Returns string type for a service object of type '<TurtlesSrv-request>"
  "turtle_controller/TurtlesSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlesSrv-request)))
  "Returns string type for a service object of type 'TurtlesSrv-request"
  "turtle_controller/TurtlesSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlesSrv-request>)))
  "Returns md5sum for a message object of type '<TurtlesSrv-request>"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlesSrv-request)))
  "Returns md5sum for a message object of type 'TurtlesSrv-request"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlesSrv-request>)))
  "Returns full string definition for message of type '<TurtlesSrv-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlesSrv-request)))
  "Returns full string definition for message of type 'TurtlesSrv-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlesSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlesSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlesSrv-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude TurtlesSrv-response.msg.html

(cl:defclass <TurtlesSrv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass TurtlesSrv-response (<TurtlesSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlesSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlesSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_controller-srv:<TurtlesSrv-response> is deprecated: use turtle_controller-srv:TurtlesSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TurtlesSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_controller-srv:result-val is deprecated.  Use turtle_controller-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlesSrv-response>) ostream)
  "Serializes a message object of type '<TurtlesSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlesSrv-response>) istream)
  "Deserializes a message object of type '<TurtlesSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlesSrv-response>)))
  "Returns string type for a service object of type '<TurtlesSrv-response>"
  "turtle_controller/TurtlesSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlesSrv-response)))
  "Returns string type for a service object of type 'TurtlesSrv-response"
  "turtle_controller/TurtlesSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlesSrv-response>)))
  "Returns md5sum for a message object of type '<TurtlesSrv-response>"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlesSrv-response)))
  "Returns md5sum for a message object of type 'TurtlesSrv-response"
  "7bcae82d9c56d7e11c9ed0787b32d9b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlesSrv-response>)))
  "Returns full string definition for message of type '<TurtlesSrv-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlesSrv-response)))
  "Returns full string definition for message of type 'TurtlesSrv-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlesSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlesSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlesSrv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurtlesSrv)))
  'TurtlesSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurtlesSrv)))
  'TurtlesSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlesSrv)))
  "Returns string type for a service object of type '<TurtlesSrv>"
  "turtle_controller/TurtlesSrv")