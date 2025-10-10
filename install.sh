#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh

run_script(){
    local script="$1"
    clear
    echo -e "\e[1;34mRunning $script...\e[0m"
    sleep 2
    ./"$script"
}



# Run install scripts
run_script "scripts/terminal.sh"
run_script "scripts/brave.sh"
run_script "scripts/hyprland.sh"
run_script "scripts/zed.sh"
run_script "scripts/webapps.sh"
run_script "scripts/obsidian.sh"
run_script "scripts/spotify.sh"
run_script "scripts/misc.sh"

clear
echo -e "\e[1;32mWe are done!!🎉🎉\e[0m"
echo "Log out and select your profile"
echo "Then select hyprland from the cog icon on the bottom right corner"
echo "Log back in and enjoy your session"
