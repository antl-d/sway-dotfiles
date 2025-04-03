#!/bin/bash

# Get battery level and status
battery_level=$(cat /sys/class/power_supply/BAT*/capacity | head -n 1)
battery_status=$(cat /sys/class/power_supply/BAT*/status | head -n 1)

# Only notify when discharging
if [[ "$battery_status" != "Discharging" ]]; then
    exit 0
fi

# Notification thresholds
warning_level=30
critical_level=10

# Notification cooldown files
warning_file="/tmp/battery_warning_time"
critical_file="/tmp/battery_critical_time"

# Critical notification (10%)
if [[ $battery_level -le $critical_level ]]; then
    # Check if we notified in the last 5 minutes
    if [[ -f "$critical_file" ]]; then
        last_notification=$(cat "$critical_file")
        current_time=$(date +%s)
        if (( current_time - last_notification < 300 )); then  # 5 minute cooldown
            exit 0
        fi
    fi

    notify-send -u critical "Battery Critical!" "Plug in now! Only ${battery_level}% remaining!" -i battery-level-10
    echo "$(date +%s)" > "$critical_file"

# Warning notification (30%)
elif [[ $battery_level -le $warning_level ]]; then
    # Check if we notified in the last 30 minutes
    if [[ -f "$warning_file" ]]; then
        last_notification=$(cat "$warning_file")
        current_time=$(date +%s)
        if (( current_time - last_notification < 1800 )); then  # 30 minute cooldown
            exit 0
        fi
    fi

    notify-send -u normal "Battery Low" "${battery_level}% remaining. Consider plugging in." -i battery-level-30
    echo "$(date +%s)" > "$warning_file"
fi
