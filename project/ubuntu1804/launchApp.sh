#!/bin/bash

# A terminal window is opened and the commands are run with update messages

gnome-terminal --tab -- bash -c '\
	echo "Starting the app...";\
	echo ;\
	sleep 3;\
	cd $(dirname "$0");\
	cd ..;\
	sleep 3;\
	docker login;\
	echo ;\
	sleep 3;\
	xhost + && docker run -ti -e DISPLAY=$DISPLAY -p 127.0.0.1:8000:8000 -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTH:/root/.Xauthority -v $(pwd):/home/fenics/shared -v $(pwd):/project -w / dlbuesen/cv_sim_med_ads_mono_08may2021:layer05 ./launchApp.sh'


