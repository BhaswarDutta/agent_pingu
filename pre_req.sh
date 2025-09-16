#!/bin/bash

# exit on failure
set -e

GREEN='\e[32m'
RESET='\e[0m'


# system update
sudo apt update && sudo apt full-upgrade -y
echo -e "${GREEN}✅ System updated${RESET}"

# install flatpak
sudo apt install flatpak -y
echo -e "${GREEN}✅ Flatpak installed${RESET}"

# add flathub remote repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo -e "${GREEN}✅ Flathub added${RESET}"

# reboot for updates and flathub addition
echo "System will reboot in 5 seconds..."
sleep 5
sudo reboot
