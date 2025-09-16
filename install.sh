#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/apps/*.sh

# Run install scripts
./scripts/apps/base_install.sh
./scripts/apps/brave_install.sh
