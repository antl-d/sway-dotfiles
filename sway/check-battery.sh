#!/bin/bash
# Check if the system is on battery
if [[ $(cat /sys/class/power_supply/AC/online) -eq 0 ]]; then
    systemctl suspend
fi
