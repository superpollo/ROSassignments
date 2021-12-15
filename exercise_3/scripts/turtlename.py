#!/usr/bin/env python

"""
Exercice 3 part B for Mobile Robotics 
class. Draw three consecutive letters
of your name/surname using ROS topics
with Python.

Letters to draw:
In my case I chose to draw my brand,
which hides my initials around the
peace symbol.

UVic-UCC
Professor: Alberto Olivares Alarcos
Student: Alexander J. Magnusson Amoros

Date: 15/12/2021
Deadline: 02/01/2022

"""

import rospy
from geometry_msgs.msg import Twist


linear = {
	'x' : [0.0, 2.0, 3.0, 0.0, 8.0, 8.0, 0.0, -0.32, 
		   0.96, 1.0, 0.5, 0.35, 0.5, 0.5, -0.5, 1.5],
	'y' : [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.5, 
		   1.5, -1.45, 1.4, -1.42, 1.5, -1.5, 0.0, 0.0],
	'z' : [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
		   0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
}

angular = {
	'x' : [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
		   0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
	'y' : [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
		   0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
	'z' : [-1.5, 3.0, 0.0, 1.5, 7.5, 7.5, 0.7, 0.0, 
		    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
}	

arr_length = len(linear['x']) - 1


def turtlename():
	
	"""
    Description
    -----------
    Creates a publisher to "turtle1/cmd_vel" topic,
	sending values for "Twist" linear and angular
	parameters of turtle velocity.

    Parameters
    ----------
    None

    Returns
    -------
	None

	"""

	j = 0

	pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
	rospy.init_node('turtlename', anonymous=True)
	rate = rospy.Rate(1)
	pos_msg = Twist()
	rate.sleep()

	"""
	Code clarification:
	This first rate.sleep is put to give some time to the subscriber
	to realize there is a new publisher publishing messages, making
	it possible to receive all messages correctly. Before adding it,
	the first message containing the first position coordinates was
	not received.
	"""

	while not rospy.is_shutdown():

		while j<=arr_length:

			pos_msg.linear.x = linear['x'][j]
			pos_msg.linear.y = linear['y'][j]
			pos_msg.linear.z = linear['z'][j]

			pos_msg.angular.x = angular['x'][j]
			pos_msg.angular.y = angular['y'][j]
			pos_msg.angular.z = angular['z'][j]

			pub.publish(pos_msg)

			rate.sleep()

			j = j+1
		
	
		return


if __name__ == '__main__':

	try:

		turtlename()
		rospy.signal_shutdown("Finished")

	except rospy.ROSInterruptException: pass
