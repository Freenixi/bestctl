# bestctl - Best CPU Temp Limiter
This project provides a solution to automatically adjust your CPU frequency based on temperature to ensure your system stays cool. It uses `cpufrequtils` to manage CPU frequency scaling and `systemd` to run the script as a service.

## Prerequisites

Before setting up, ensure you have the following dependencies installed:

- A Linux system (Ubuntu/Debian-based distributions recommended)
- `cpufrequtils` installed for managing CPU frequency scaling

You can install `cpufrequtils` with the following command:

```bash
sudo apt install cpufrequtils -y
