#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh


# Run install scripts
# Terminal
./scripts/terminal.sh

# Hyprland
./scripts/hyprland.sh
