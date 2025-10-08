#!/bin/bash

# Check if rofi is already running
if pgrep -x rofi > /dev/null; then
    # Kill the running rofi
    pkill -x rofi
else
    # Launch rofi
    rofi -show drun
fi
