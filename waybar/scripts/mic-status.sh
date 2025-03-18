#!/bin/bash

# Get the microphone status using pactl
mic_status=$(pactl list sources | grep -A 10 "alsa_input" | grep "Mute:" | awk '{print $2}')

# Define icons from Iosevka Nerd Font
mic_on=""  # Microphone on icon
mic_off="" # Microphone off icon

# Output the appropriate icon
if [[ "$mic_status" == "yes" ]]; then
    echo "$mic_off"
else
    echo "$mic_on"
fi
