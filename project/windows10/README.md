# Minimum Computer Specifications
- At least 8 GB of RAM
- CPU equivalent to at least i5 generation 8
- 50 GB free on the hard drive. Solid state drives are not required but will have better performance.
- Stable internet connection to be able to download the containers, which can be as large at 9.5 GB (i.e. preferable use DSL cable rather than WiFi).

# Operating System Specifications
- Fully updated windows 10 (home, educational, or professional)
- Local (i.e. not a web or cloud based) installation of Excel.
- Admin privileges. If the account does not have admin privileges, then the system admin will need to perform the installation for you.

# Back up Your Data
- Back up your data to an external device, i.e. not a separate partition on the same hard-drive.
- This is standard good practice and should always be done before starting any installation or making any major changes to your PC.

# Prerequisite Steps and Software
- Enable virtualization on your computer via change in bios settings. The following [video] illustrates what is meant by this and shows an example.
- Install Windows System for Linux version 2 which is described in the following [video].
- Install Docker Desktop and configure it to run Linux based containers via WSL 2 as described in the following [video].
- Install XLaunch as described in the following [video].
- Prior to installing and using the app, it is required to startup Docker Desktop, logging into your account. It is also necessary to start an XLaunch session.

# Installing the App
- Download the project folder from this repository and unzip to any location on your computer.
- Verify that docker desktop is running, that you are signed into your docker account, and that docker is set for running linux based containers.
- Run the docker container installation script in the "containers" folder.
- Verify that XLaunch is running with access control disabled. Note the display number that is assigned by hovering over the icon after launch (i.e. Desktop-BN8H7BC:0.0 in which case the display is 0.0). Most of the time, the default is 0.0, but not always, so this step is required for robustness.
- Run the launchApp script in the "windows10" folder. Follow the instructions to enter the virtual Ip4 "Ipv4" address for your computer, and enter the display number during the app launch process.
- After setting the paths for the parameter and data export excel files, run the simulation with the preset parameter values. Verify that the resulting plot matches the goldStandard image in the windows10 folder.
- Change one of the parameters, rerun the simulation, and verify that the result changes. Refresh the DataExport_ForOpenAndRefresh export excel file and verify that the excel file connection is functional.
- Close docker and XLaunch.

# Uninstalling the App
- Run the uninstallation script in the dockerfolder, and follow the instruction in the prompt to verify that the container has been removed.
- Move the project folder to the recycling bin.
- Close docker and XLaunch.









