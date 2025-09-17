#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/*.sh

# Run install scripts
./scripts/apps/base_install.sh
./scripts/apps/alacritty.sh

# ./scripts/apps/brave_install.sh
# ./scripts/apps/zed_install.sh
