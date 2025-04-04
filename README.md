# bestctl - Best CPU Temp Limiter
This project provides a solution to automatically adjust your CPU frequency based on temperature to ensure your system stays cool. It uses `cpufrequtils` to manage CPU frequency scaling and `systemd` to run the script as a service.

## Setup Instructions
A. Create the Directory and copy the Script:
 1) `sudo mkdir /etc/bestctl`
 2) `sudo wget https://raw.githubusercontent.com/Freenixi/bestctl/main/bestctl.sh -O /etc/bestctl/bestctl.sh`

B. Make the Script Executable:
`sudo chmod +x /etc/bestctl/bestctl.sh`

C. Check CPU Temperature:
`cat /sys/class/thermal/thermal_zone0/temp`

D. Create a Systemd Service:
`sudo wget https://raw.githubusercontent.com/Freenixi/bestctl/refs/heads/main/bestctl.service -O /etc/systemd/system/bestctl.service`

E. Enable and Start the Service:
 1) `sudo systemctl daemon-reload`
 2) `sudo systemctl enable bestctl.service`
 3) `sudo systemctl start bestctl.service`
 4) `sudo systemctl status bestctl.service`


### Prerequisites

Before setting up, ensure you have the following dependencies installed:

- A Linux system (Ubuntu/Debian-based distributions recommended)
- `cpufrequtils` installed for managing CPU frequency scaling

You can install `cpufrequtils` with the following command:
`sudo apt install cpufrequtils -y`
