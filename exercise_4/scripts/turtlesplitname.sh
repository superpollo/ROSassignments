#!/bin/sh
rosservice call /turtle1/set_pen 0 0 0 0 on
rosservice call /turtle1/teleport_absolute 2.5 1.0 0
rosservice call /clear
#movement for J
rosservice call /turtle1/set_pen 255 0 0 1 off
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
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'

rosservice call /turtle1/set_pen 0 0 0 0 on
rosservice call /turtle1/teleport_absolute 5.5 5.5 0.7
#rosservice call /clear
#movement for J
rosservice call /turtle1/set_pen 255 255 0 3.5 off
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
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'


rosservice call /turtle1/set_pen 0 0 0 0 on
rosservice call /turtle1/teleport_absolute -- 1.0 5.5 -0.5
#rosservice call /clear
#movement for J
rosservice call /turtle1/set_pen 255 192 203 5.5 off
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
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
