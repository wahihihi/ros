
(cl:in-package :asdf)

(defsystem "turtle_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtlesSrv" :depends-on ("_package_TurtlesSrv"))
    (:file "_package_TurtlesSrv" :depends-on ("_package"))
  ))