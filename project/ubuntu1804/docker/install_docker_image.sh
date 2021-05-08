#!/bin/bash

# A terminal window is opened and the commands are run with update messages

gnome-terminal --tab -- bash -c '\
	echo "Script is starting...";\
	echo ;\
	sleep 3;\
	echo "Checking docker login status...";\
	echo ;\
	sleep 3;\
	docker login;\
	echo ;\
	echo "Installing the docker image...";\
	echo ;\
	sleep 3;\
	docker pull dlbuesen/cv_sim_med_ads_mono_08may2021:layer04;\
	sleep 3;\
	echo ;\
	echo "Confirming installation of the docker image...";\
	echo ;\
	sleep 5;\
	echo "Docker image ID 8d3c6811a644 from repository dlbuesen/cv_sim_med_ads_mono_08may2021 with tag layer04 should appear in the list of images below";\
	echo ;\
	docker images;\
	echo ;\
	echo "Done";\
	echo ;\
sleep 60'
