#!/bin/bash

# exit on failure
set -e

# Install needed packages
sudo dnf install -y hyprland waybar rofi-wayland
# Enable COPR repo
sudo dnf copr enable -y solopasha/hyprland

# Install more packages
sudo dnf install -y swww hyprlock swaync

# Copy the Configs
cp -r "templates and configs/hypr" ~/.config/
cp -r "templates and configs/rofi" ~/.config/
cp -r "templates and configs/scripts" ~/.config/
cp -r "templates and configs/waybar" ~/.config/
# Copy the Wallpapers
cp -r Wallpapers ~/Pictures

# Give permissions to the scripts
chmod +x ~/.config/waybar/launch.sh
chmod +x ~/.config/scripts/wallpaper.sh
chmod +x ~/.config/scripts/wallpaper_startup.sh
chmod +x ~/.config/rofi/rofi_launcher.sh
