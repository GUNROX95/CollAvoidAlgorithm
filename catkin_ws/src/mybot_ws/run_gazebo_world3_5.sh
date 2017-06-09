#!/bin/bash

sudo killall gzserver
sudo killall gzclient
sudo killall rviz
sudo killall roscore
sudo killall rosmaster

roslaunch mybot_gazebo third_world_five_bots.launch &
rosrun mybot_control coll_avoid robot1 &
rosrun mybot_control coll_avoid robot2 &
rosrun mybot_control coll_avoid robot3 &
rosrun mybot_control coll_avoid robot4 &
rosrun mybot_control coll_avoid robot5 

