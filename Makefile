# For source
SHELL := /bin/bash

.PHONY: files
all: files
	-killall rosout roslaunch rosmaster gzserver nodelet robot_state_publisher gzclient python3
	source gym_gazebo/envs/ros_ws/devel/setup.bash; \
	python3 ./examples/gazebo_lab06_ex/gazebo_lab06_ex.py

kill: files
	-killall rosout roslaunch rosmaster gzserver nodelet robot_state_publisher gzclient python3
