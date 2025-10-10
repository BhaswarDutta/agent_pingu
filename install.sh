#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh


# Run install scripts
# Terminal
./scripts/terminal.sh

# Brave
./scripts/brave.sh

# Hyprland
./scripts/hyprland.sh

# Zed
./scripts/zed.sh

# Obsidian
./scripts/obsidian.sh
