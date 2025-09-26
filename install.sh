#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh


# Base install
sudo dnf install -y obs-studio mpv qbittorrent

# Run install scripts
./scripts/alacritty.sh

# ./scripts/apps/brave_install.sh
# ./scripts/apps/zed_install.sh
