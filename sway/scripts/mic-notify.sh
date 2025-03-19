#!/bin/bash

# Get the current mic mute status
mic_mute=$(pactl list sources | grep -A 10 "alsa_input" | grep "Mute:" | awk '{print $2}')

# Set the icon based on mic mute status
if [ "$mic_mute" = "yes" ]; then
    icon="󰍭"  # Mic muted icon
    status="Muted"
else
    icon="󰍬"  # Mic unmuted icon
    status="Unmuted"
fi

# Send the notification
notify-send -t 1000 -h string:x-canonical-private-synchronous:mic "Microphone: $status" "$icon"
