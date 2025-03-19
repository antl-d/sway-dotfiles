#!/bin/bash

# Get the current volume level and mute status
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | tr -d '%')
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

# Set the icon based on mute status
if [ "$mute" = "yes" ]; then
    icon="󰝟"  # Muted icon (from Iosevka Nerd Font)
else
    if [ "$volume" -eq 0 ]; then
        icon="󰕿"  # Volume 0% icon
    elif [ "$volume" -le 50 ]; then
        icon="󰖀"  # Low volume icon
    else
        icon="󰕾"  # High volume icon
    fi
fi

# Send the notification
notify-send -t 1000 -h string:x-canonical-private-synchronous:volume "Volume: $volume%" "$icon"
