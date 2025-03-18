#!/bin/bash

# Get all active ports
ACTIVE_PORTS=$(pactl list sinks | grep "Active Port:" | cut -d ' ' -f 3-)

# Check if any active port is for headphones or Bluetooth
if echo "$ACTIVE_PORTS" | grep -qi "headphones\|headset-output"; then
    echo "󰋋" # Headphones icon
else
    echo "󰓃" # Speakers icon
fi
