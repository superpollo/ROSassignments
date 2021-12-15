#!/bin/sh

: '
Exercice 3 part A for Mobile Robotics 
class. Draw three consecutive letters
of your name/surname using ROS topics.

Letters to draw:
In my case I chose to draw my brand,
which hides my initials around the
peace symbol. 

UVic-UCC
Professor: Alberto Olivares Alarcos
Student: Alexander J. Magnusson Amoros

Date: 15/12/2021
Deadline: 02/01/2022

'

#position turtle and clean working area
rosservice call /turtle1/teleport_absolute 5.5 5.5 0
rosservice call /clear

#movement for J
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 3.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
#position turtle
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5]'
#movement for cercle
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[8.0, 0.0, 0.0]' '[0.0, 0.0, 7.5]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[8.0, 0.0, 0.0]' '[0.0, 0.0, 7.5]'
#position turtle
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 0.7]'
#movement for 1st A
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-0.32, -0.5, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.96, 1.5, 0.0]' '[0.0, 0.0, 0.0]'
#movement for M
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.0, -1.45, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 1.4, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.35, -1.42, 0.0]' '[0.0, 0.0, 0.0]'
#movement for 2nd A
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 1.5, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, -1.5, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-0.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
#move turtle away
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
