# bestctl - Best CPU Temp Limiter
This project provides a solution to automatically adjust your CPU frequency based on temperature to ensure your system stays cool. It uses `cpufrequtils` to manage CPU frequency scaling and `systemd` to run the script as a service.

## How It Works
Once installed, the script automatically adjusts your CPU's frequency based on temperature readings. If the temperature exceeds a threshold, the script reduces the CPU frequency to prevent overheating, and when the temperature is safe, it restores the CPU to its regular frequency.

## Installation
`curl -sSL https://raw.githubusercontent.com/Freenixi/bestctl/main/install.sh | sudo bash`


### Prerequisites
- A Linux system (Debian-based distributions recommended) - `https://www.debian.org/`
- `cpufrequtils` installed `curl` adn `cpufrequtils` by command - `sudo apt install curl cpufrequtils -y`

## Notes
- You can monitor the CPU temperature at any time by command `cat /sys/class/thermal/thermal_zone0/temp`
- or with `btop` by command `sudo apt install btop -y && btop`

## Uninstallation
`sudo systemctl stop bestctl.service`

`sudo systemctl disable bestctl.service`

`sudo rm /etc/systemd/system/bestctl.service`

`sudo rm /etc/bestctl/bestctl.sh`
