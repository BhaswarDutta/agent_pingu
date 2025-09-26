#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh


# Base install
sudo dnf install -y obs-studio mpv qbittorrent fastfetch

# Run install scripts
./scripts/alacritty.sh

./scripts/brave.sh
# ./scripts/apps/zed_install.sh
