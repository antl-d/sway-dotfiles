#!/bin/bash
WEATHER=$(curl -s wttr.in/?format="%c%t+%w&m")
echo "$WEATHER"
