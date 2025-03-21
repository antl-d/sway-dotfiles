#!/bin/bash

# Count the number of hidden scratchpad windows
count=$(swaymsg -t get_tree | jq -r '[recurse(.nodes[]?, .floating_nodes[]?) | select(.type == "floating_con" and .scratchpad_state != null)] | length')

# Toggle scratchpad on click
if [[ "$1" == "click" ]]; then
    swaymsg 'scratchpad show'
fi

# Output the count (or an empty string if no windows are hidden)
if [[ "$count" -gt 0 ]]; then
    echo "󰈙 $count"
else
    echo ""
fi
