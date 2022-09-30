#!/usr/bin/env python|

import rospy
from beginner_tutorials.msg import WaveForm
from std_msgs.msg import Float64
import numpy as np
pub = rospy.Publisher('signal', Float64, queue_size=10)


def callback(data):
    signal = data.magnitude * \
        np.sin(2.0*np.pi*rospy.get_time()/data.period + data.phase)
    rospy.loginfo("generated signal %.3f" % signal)
    pub.publish(signal)


def signal_generator():

    rospy.init_node('signal_generator', anonymous=True)
    rospy.Subscriber('signal_config', WaveForm, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    signal_generator()
