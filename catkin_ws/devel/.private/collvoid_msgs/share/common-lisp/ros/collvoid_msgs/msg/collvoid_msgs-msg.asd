
(cl:in-package :asdf)

(defsystem "collvoid_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AggregatedPoseTwist" :depends-on ("_package_AggregatedPoseTwist"))
    (:file "_package_AggregatedPoseTwist" :depends-on ("_package"))
    (:file "PoseArrayWeighted" :depends-on ("_package_PoseArrayWeighted"))
    (:file "_package_PoseArrayWeighted" :depends-on ("_package"))
    (:file "PoseTwistWithCovariance" :depends-on ("_package_PoseTwistWithCovariance"))
    (:file "_package_PoseTwistWithCovariance" :depends-on ("_package"))
    (:file "collvoid_debug" :depends-on ("_package_collvoid_debug"))
    (:file "_package_collvoid_debug" :depends-on ("_package"))
  ))