@echo off

echo.
echo Docker desktop should be running and configured to run Linux containers.
echo.
echo Should be signed in to dockerhub account.

timeout 3

echo checking login status...
echo.
docker login

timeout 3

echo XLaunch should be running with "Disable access control" selected.
echo.
echo Enter screen ID assigned in XLaunch (i.e. 0.0), found by hovering over XLaunch icon
set /p XLaunchScreenID=

echo The entered XLaunch display is %XLaunchScreenID%

timeout 3

echo.
echo Next step is to obtain the IPv4 address needed for Docker to access the screen.
echo Look for the "IPv4 Address" from "Ethernet adapter vEthernet (WSL)"
echo i.e. "111.11.111.1"
echo after pressing any key.
echo.

pause

ipconfig
echo.

echo "Enter the "IPv4 Address" from "Ethernet adapter vEthernet (WSL)"
echo i.e. "111.11.111.1"
echo can highlight the entry, "control+c" to "copy"
echo then right click in the command line to paste
echo or can also manually type.
echo.

set /p IPv4=

echo.
echo The entered IPv4 address is %IPv4%
echo.

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

docker run --rm -ti --env DISPLAY=%IPv4%:%XLaunchScreenID% -p 127.0.0.1:8000:8000 -v "%cd%":/home/fenics/shared -v "%cd%":/project -w / dlbuesen/mat_mcr:910_10may21 ./launchApp.sh

