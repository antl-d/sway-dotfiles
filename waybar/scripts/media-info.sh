#!/bin/bash
# Fetch the currently playing media name using pactl
MEDIA_NAME=$(pactl list sink-inputs | grep -E "application.name =|media.name =" | awk -F '=' '{print $2}' | tr -d ' "' | paste -sd " - " -)

if [[ -n $MEDIA_NAME ]]; then
    echo "Now Playing: $MEDIA_NAME"
else
    echo "No media playing"
fi
