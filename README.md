# bestctl - Best CPU Temp Limiter
This project provides a solution to automatically adjust your CPU frequency based on temperature to ensure your system stays cool. It uses `cpufrequtils` to manage CPU frequency scaling and `systemd` to run the script as a service.


## What It Is Good For
`bestctl` is ideal for systems that need to run at high performance without overheating, such as small devices like `Raspberry Pi`. By automatically adjusting the CPU frequency based on temperature, it helps:
- Extend the lifespan of your device by maintaining a safe operating temperature and preventing overheating.

- Save power and electricity, as lowering the CPU frequency during periods of high temperature reduces energy consumption.

- Run demanding tasks safely, such as AI models or other resource-intensive processes, on devices with limited cooling capabilities.


## How It Works
Once installed, the script automatically adjusts your CPU's frequency based on temperature readings `(default=15sec)`. If the temperature exceeds a threshold `(default=61℃)`, the script reduces the CPU frequency to prevent overheating `(default=powersave)`, and when the temperature is safe `(default=60℃)`, it restores the CPU to its regular frequency `(default=ondemand)`.


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
