#!/bin/bash

# exit on failure
set -e

# Install needed packages
sudo dnf install -y hyprland waybar rofi-wayland
# Enable COPR repo
sudo dnf copr enable -y solopasha/hyprland

# Install more packages
sudo dnf install -y swww hyprlock swaync
