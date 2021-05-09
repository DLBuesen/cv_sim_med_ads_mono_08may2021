@echo off

echo.

echo Starting script...
echo.

echo Docker desktop should be running and configured to run Linux containers.
echo.

echo Should be signed in to dockerhub account.

timeout 3

echo checking login status...
echo.
docker login

timeout 3

echo Uninstalling the docker container image...
echo.

docker docker rmi --force 8d3c6811a644

timeout 3
echo Listing the installed docker images on the system...

timeout 3

docker images

timeout 3

echo Docker image with ID "8d3c6811a644"
echo from repository "dlbuesen/cv_sim_med_ads_mono_08may2021"
echo with tag "layer04"
echo should not appear in the list of images above
echo.

echo Done
echo.

pause