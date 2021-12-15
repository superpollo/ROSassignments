#!/usr/bin/env python

"""
Exercice 4 part B for Mobile Robotics 
class. Draw three consecutive letters
of your name/surname using ROS topics
and ROS services to change colours and
write separately with Python.

Letters to draw:
In my case I chose to draw my brand,
which hides my initials around the
peace symbol. After consulting with
the professor, instead of breaking
the brand to make the separation, I 
will make three separated draws of
the brand.

UVic-UCC
Professor: Alberto Olivares Alarcos
Student: Alexander J. Magnusson Amoros

Date: 15/12/2021
Deadline: 02/01/2022

"""

from std_srvs.srv import Empty as EmptyServiceCall
import rospy
from turtlesim.srv import SetPen
from turtlesim.srv import TeleportAbsolute
from geometry_msgs.msg import Twist



linear = {
    'x' : [0.0, 2.0, 3.0, 0.0, 8.0, 8.0, 0.0, -0.32, 
           0.96, 1.0, 0.5, 0.35, 0.5, 0.5, -0.5, 1.0],
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


def change_pen_client(r, g, b, w, state):
	
    """
    Description
    -----------
    Creates a client for "turtle1/set_pen" service,
    calling it with the values set as parameters of
    the function.
    Will change colour and width of pen and set it
    ON or OFF.

    Parameters
    ----------
    r : uint8
        Value of red proportion on pen.
	From 0 to 255.
    g : uint8
        Value of green proportion on pen.
	From 0 to 255.
    b : uint8
        Value of blue proportion on pen.
	From 0 to 255.
    w : uint8
        Width value of pen.
    state : uint8
       	Determines wether pen is ON or OFF.
	ON = 0; OFF = 1.

    Returns
    -------
    None

    """

    rospy.wait_for_service('/turtle1/set_pen')
	
    try:

	change_pen = rospy.ServiceProxy('/turtle1/set_pen', SetPen)
	change_pen(r, g, b, w, state)
	
    except rospy.ServiceException as e:

	print("Service call failed: %s"%e)


def teleport_client(x, y, z):

    """
    Description
    -----------
    Creates a client for "turtle1/teleport_absolute"
    service, calling it with the values that are sent
    as parameters of the function.
    Will move turtle to a new position.

    Parameters
    ----------
    x : float32
	Position on the X axis to send the turtle.
    y : float32
	Position on the Y axis to send the turtle.
    z : float32
	Orientation of the turtle.

    Returns
    -------
    None

    """

    rospy.wait_for_service('/turtle1/teleport_absolute')

    try:

	teleport_to = rospy.ServiceProxy('/turtle1/teleport_absolute', 
                                        TeleportAbsolute)
	teleport_to(x, y, z)

    except rospy.ServiceException as e:

	print("Service call failed: %s"%e)


def clear_client():

    """
    Description
    -----------
    Creates a client for "clear" service,
    calling it will remove the previous 
    lines drawn by the movement of the
    turtle to a new position.

    Parameters
    ----------
    None

    Returns
    -------
    None

    """

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
