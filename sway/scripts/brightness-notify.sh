#!/bin/bash

# Get the current brightness level
brightness=$(xbacklight -get | awk -F. '{print $1}')

# Set the icon based on brightness level
if [ "$brightness" -eq 0 ]; then
    icon="󰃞"  # Brightness 0% icon
elif [ "$brightness" -le 50 ]; then
    icon="󰃝"  # Low brightness icon
else
    icon="󰃟"  # High brightness icon
fi

# Send the notification
notify-send -t 1000 -h string:x-canonical-private-synchronous:brightness "Brightness: $brightness%" "$icon"
