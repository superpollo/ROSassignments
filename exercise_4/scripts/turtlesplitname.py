#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.srv import SetPen
from turtlesim.srv import TeleportAbsolute
from std_srvs.srv import Empty as EmptyServiceCall
linear = {
	'x' : [0.0, 2.0, 3.0, 0.0, 8.0, 8.0, 0.0, -0.32, 0.96, 1.0, 0.5, 0.35, 0.5, 0.5, -0.5, 1.0],
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
	rate = rospy.Rate(1)
	pos_msg = Twist()
	rate.sleep()
	while not rospy.is_shutdown():
		#cambiar por length of array -1 (menos uno nose si hace falta)
		while j<=15:
			#print(j)
			#print(linear['x'][3])
			pos_msg.linear.x = linear['x'][j]
			pos_msg.linear.y = linear['y'][j]
			pos_msg.angular.z = angular['z'][j]
			#print(pos_msg)
			pub.publish(pos_msg)
			rate.sleep()
			j = j+1
		#print("out of loop")
		#rospy.signal_shutdown("Finished one")
		return

def change_pen_client(r, g, b, w, state):
	rospy.wait_for_service('/turtle1/set_pen')
	try:
		change_pen = rospy.ServiceProxy('/turtle1/set_pen', SetPen)
		change_pen(r, g, b, w, state)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)

def teleport_client(x, y, z):
	rospy.wait_for_service('/turtle1/teleport_absolute')
	try:
		teleport_to = rospy.ServiceProxy('/turtle1/teleport_absolute', TeleportAbsolute)
		teleport_to(x, y, z)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)

def clear_client():
	rospy.wait_for_service('clear')
	try:
		clear_lines = rospy.ServiceProxy('clear', EmptyServiceCall)
		clear_lines()
	except rospy.ServiceException as e:
		print("Service call failes: %s"%e)

if __name__ == '__main__':
	rospy.init_node('turtlename', anonymous=True)
	try:
		clear_client()
		change_pen_client(0, 0, 0, 0, 1)
		teleport_client(1.0, 2.5, -0.3)
		change_pen_client(255, 0, 0, 10, 0)
		turtlename()
		change_pen_client(0, 0, 0, 0, 1)
		teleport_client(5.0, 5.5, 1.0)
		change_pen_client(255, 255, 0, 5, 0)
		turtlename()
		change_pen_client(0, 0, 0, 0, 1)
		teleport_client(7.0, 4.5, -1.0)
		change_pen_client(255, 192, 203, 1, 0)
		turtlename()		
		rospy.signal_shutdown("Finished")
	except rospy.ROSInterruptException: pass
