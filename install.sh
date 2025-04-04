#!/bin/bash

# Ensure the script is run with sudo
if [ "$(id -u)" -ne "0" ]; then
    echo "This script must be run as root. Try running with sudo."
    exit 1
fi

# A. Create the Directory and copy the Script
echo "Creating directory /etc/bestctl and downloading the script..."
sudo mkdir -p /etc/bestctl
sudo wget https://raw.githubusercontent.com/Freenixi/bestctl/main/bestctl.sh -O /etc/bestctl/bestctl.sh

# B. Make the Script Executable
echo "Making the script executable..."
sudo chmod +x /etc/bestctl/bestctl.sh

# C. Check CPU Temperature
echo "Checking CPU Temperature..."
cat /sys/class/thermal/thermal_zone0/temp

# D. Create a Systemd Service
echo "Downloading the systemd service..."
sudo wget https://raw.githubusercontent.com/Freenixi/bestctl/main/bestctl.service -O /etc/systemd/system/bestctl.service

# E. Enable and Start the Service
echo "Reloading systemd, enabling, and starting the service..."
sudo systemctl daemon-reload
sudo systemctl enable bestctl.service
sudo systemctl start bestctl.service
sudo systemctl status bestctl.service

echo "Installation complete!"
