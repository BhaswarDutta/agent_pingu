#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh


# Base install
sudo dnf install -y obs-studio mpv qbittorrent fastfetch

# Run install scripts
# Install and Setup Alacritty
./scripts/alacritty.sh

# Install and Setup Brave
./scripts/brave.sh
# ./scripts/apps/zed_install.sh
