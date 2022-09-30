#!/usr/bin/env python3
import rospy
from beginner_tutorials.msg import WaveForm
import numpy as np

def signal_configurator():
    pub = rospy.Publisher('signal_config' , WaveForm, queue_size=10)
    rospy.init_node('signal_configurator', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        waveform = WaveForm()
        waveform.period = 1.0
        waveform.magnitude = 1.0
        waveform.phase = np.pi/4
        pub.publish(waveform)
        rate.sleep()


if __name__ == '__main__':
    try:
        signal_configurator()
    except rospy.ROSInterruptException:
        pass