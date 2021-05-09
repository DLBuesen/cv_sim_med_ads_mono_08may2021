@echo off

echo Docker desktop should be running and configured to run Linux containers.
echo Should be signed in to dockerhub account.

timeout 3

echo checking login status...
docker login

timeout 3

echo XLaunch should be running with "Disable access control" selected.
echo Next step is to obtain the IPv4 address needed for Docker to access the screen.

pause

ipconfig

echo Enter the "IPv4 Address" from "Ethernet adapter vEthernet"
echo i.e. "111.11.111.1"

set /p IPv4=

echo The entered IPv4 address is %IPv4%

:: PAUSE

:: Need to cd to the project folder, using this batch file as the reference point

	:: %~dpnx0% name and location of the batch file being run
	:: d=drive, p=path, n=name, extension

	:: echo %~dp0%
	:: echo %cd%

	cd %~dp0%
	cd ..

	echo Current working directory is %cd%

:: Run the container

docker run --rm --privileged -it --env DISPLAY=%IPv4%:00 -v "%cd%":/appFolder dlbuesen/matlab_mcr_v910 ./launchApp.sh

PAUSE