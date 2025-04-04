#!/bin/bash
sudo cpufreq-set -g ondemand
while true; do
    TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
    TEMP_C=$((TEMP / 1000))

    if [ "$TEMP_C" -ge 61 ]; then
        sudo cpufreq-set -g powersave
    elif [ "$TEMP_C" -le 60 ]; then
        sudo cpufreq-set -g ondemand
    fi

    sleep 15
done
