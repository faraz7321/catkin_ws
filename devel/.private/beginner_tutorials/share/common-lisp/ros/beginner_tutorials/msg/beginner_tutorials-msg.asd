
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Student" :depends-on ("_package_Student"))
    (:file "_package_Student" :depends-on ("_package"))
    (:file "WaveForm" :depends-on ("_package_WaveForm"))
    (:file "_package_WaveForm" :depends-on ("_package"))
    (:file "WaveParams" :depends-on ("_package_WaveParams"))
    (:file "_package_WaveParams" :depends-on ("_package"))
  ))