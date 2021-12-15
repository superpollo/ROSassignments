#!/bin/sh

: '
Exercice 4 part A for Mobile Robotics 
class. Draw three consecutive letters
of your name/surname using ROS topics
and ROS services to change colours and
write separately.

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

'

rosservice call /turtle1/set_pen 0 0 0 0 on
rosservice call /turtle1/teleport_absolute 2.5 1.0 0
rosservice call /clear

#set pen ON with colour red
rosservice call /turtle1/set_pen 255 0 0 1 off
#movement for J
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 3.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
#position turtle
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5]'
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

#set pen OFF and move turtle to new start position
rosservice call /turtle1/set_pen 0 0 0 0 on
rosservice call /turtle1/teleport_absolute 5.5 5.5 0.7

#set pen ON with colour yellow
rosservice call /turtle1/set_pen 255 255 0 3.5 off
#movement for J
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 3.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
#position turtle
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5]'
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

#set pen OFF and move turtle to new start position
rosservice call /turtle1/set_pen 0 0 0 0 on
rosservice call /turtle1/teleport_absolute -- 1.0 5.5 -0.5

#set pen ON with colour pink
rosservice call /turtle1/set_pen 255 192 203 5.5 off
#movement for J
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 3.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
#position turtle
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5]'
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
