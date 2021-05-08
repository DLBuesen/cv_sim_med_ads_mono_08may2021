# System Description Highlights
- Simulation of the experimental cyclic voltammogram signal for a given set of dimensional parameters (concentrations, diffusion rates, catalytic rate constants, etc).
- Redox enzymatic catalysis mediated by a freely diffusing redox mediator.
- Enzyme immobilized as an adsorbed mediator.
- Reversible electron transfer at the electrode (Nernst Equation).
- The mechanism is a ping-pong mechanism with allowance for enyzme inhibition, which was used in the following research [paper] (reference). Additional research papers which may also be of interest for this topic are included below.

# How the App can be Useful
- To simulate the predicted experimental signals for a given set of experimental conditions and dimensional parameters.
- To explore how the qualitative features of cyclic voltammograms change depending on various conditions.
- To explore how secondary plots (i.e. plots based on peak currents) can be affected by these changes.

# Typical Workflow and Results
- The project folder that is downloaded from here and extracted to the host computer is shared with the app in the container.
- If applicable, start up prerequiste supporting software (i.e. starting XLaunch).
- Parameters are entered into the included excel file template and saved.
- When starting the app, the location of the parameter and data export files must be confirmed. This only needs to be done once per session, or when wanting to reset the simulation number back to 1 (i.e. preparing for an overlay plot).
- The simulation is then performed by pressing a button in the main menu.
- A plot of the cyclic voltammogram appears. Tools within the graph can be used to read the data points, or to save the figure as a .png
- The current-potential data for the simulated CV is saved to the data export excel file. The data can then be transferred to another spreadsheet or graphing program (i.e. Origin) for reformatting or for making overlay plots.
- The program is closed by closing the main window of the simulation.
- A demo of the app is shown in a [video] (reference) for running the app on a windows 10 operating system.

# Operating Systems and Installation
- The app can be run from Windows 10 or from Ubuntu 18.04 LTS.
- The core of the simulation is carried out in a common Docker Container, which is used regardless of the host operating system. Therefore, installation of docker is required. It is also necessary to register for a free docker account. For Windows systems, WSL 2 must be installed and docker must be configured to run linux-based containers.
- The graphical user interface of the app requires for the host operating system to share screen infrastructure. Therefore, on Windows 10 systems, installation of XLaunch is required. However, this is not required on Linux 18.04 systems.
- It is recommended that the installation of the prerequisites for this app (docker and xLaunch) be performed by IT-support personnel or by advanced PC users (i.e. comfortable going into bios to change settings, using the command line, resolution of system-specific issues that might arise via google search and some troubleshooting).
- Installation and use of the app itself does not require any specialized computer knowledge/interest once the prerequisites are fulfulled.
- Additional installation instructions which are operating system specific can be found within this project for [Windows 10] (ref) and for [Ubuntu 18.04] (ref).

# License
- This app was made using Matlab with an education and research license. Therefore, use of the app must be within the scope of this license.

# Some Additional Reference Articles
- [Paper Title] (reference)


