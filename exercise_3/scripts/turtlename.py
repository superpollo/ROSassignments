#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

linear = {
	'x' : [0.0, 2.0, 3.0, 0.0, 8.0, 8.0, 0.0, -0.32, 0.96, 1.0, 0.5, 0.35, 0.5, 0.5, -0.5, 1.5],
	'y' : [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.5, 1.5, -1.45, 1.4, -1.42, 1.5, -1.5, 0.0, 0.0],
	'z' : []
}

angular = {
	'x' : [],
	'y' : [],
	'z' : [-1.5, 3.0, 0.0, 1.5, 7.5, 7.5, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
}	
"""
El primer rate.sleep esta para darle tiempo al subscriptor de saber que hay un nuevo publisher
y entonces recibir todos los mensajes bien.
"""

def turtlename():
	j = 0
	pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
	rospy.init_node('turtlename', anonymous=True)
	rate = rospy.Rate(1)
	pos_msg = Twist()
	rate.sleep()
	while not rospy.is_shutdown():
		while j<=15:
			print(j)
			#print(linear['x'][3])
			pos_msg.linear.x = linear['x'][j]
			pos_msg.linear.y = linear['y'][j]
			pos_msg.angular.z = angular['z'][j]
			print(pos_msg)
			pub.publish(pos_msg)
			rate.sleep()
			j = j+1
		#print("out of loop")
		rospy.signal_shutdown("Finished")

if __name__ == '__main__':
	try:
		turtlename()
	except rospy.ROSInterruptException: pass
