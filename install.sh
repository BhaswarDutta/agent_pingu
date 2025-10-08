#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh


# Run install scripts
# Install and Setup Alacritty
./scripts/terminal.sh

# Install and Setup Brave
# ./scripts/brave.sh
# ./scripts/apps/zed_install.sh
