#!/usr/bin/env python3

import rospy
import tf2_ros
import geometry_msgs.msg
import tf2_msgs.msg

def publish_map_frame():
    rospy.init_node('map_frame_publisher')
    
    # Create transform broadcaster
    br = tf2_ros.TransformBroadcaster()
    
    # Create transform message
    t = geometry_msgs.msg.TransformStamped()
    t.header.frame_id = "world"
    t.child_frame_id = "map"
    t.header.stamp = rospy.Time.now()
    
    # Set transform (identity transform)
    t.transform.translation.x = 0.0
    t.transform.translation.y = 0.0
    t.transform.translation.z = 0.0
    t.transform.rotation.x = 0.0
    t.transform.rotation.y = 0.0
    t.transform.rotation.z = 0.0
    t.transform.rotation.w = 1.0
    
    rate = rospy.Rate(10)  # 10 Hz
    
    while not rospy.is_shutdown():
        t.header.stamp = rospy.Time.now()
        br.sendTransform(t)
        rate.sleep()

if __name__ == '__main__':
    try:
        publish_map_frame()
    except rospy.ROSInterruptException:
        pass 