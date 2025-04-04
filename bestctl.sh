# CHECK README at https://raw.githubusercontent.com/Freenixi/bestctl/refs/heads/main/README.md
# or at https://github.com/Freenixi/bestctl/blob/main/README.md

#!/bin/bash
# Set CPU governor to 'ondemand' mode
sudo cpufreq-set -g ondemand

# Start an infinite loop to monitor CPU temperature
while true; do
    # Get the CPU temperature in millidegrees
    TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
    TEMP_C=$((TEMP / 1000))  # Convert to degrees Celsius

    # If temperature is 61°C or higher, switch to 'powersave' mode
    if [ "$TEMP_C" -ge 61 ]; then
        sudo cpufreq-set -g powersave
    # If temperature is 60°C or lower, switch to 'ondemand' mode
    elif [ "$TEMP_C" -le 60 ]; then
        sudo cpufreq-set -g ondemand
    fi

    # Sleep for 15 seconds before checking again
    sleep 15
done
