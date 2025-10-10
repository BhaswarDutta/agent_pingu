#!/bin/bash

# exit on failure
set -e

# Copy Icons
cp -r icons ~/.local/share/

# Copy .desktop files
mkdir -p ~/.local/share/applications/
cp desktop_files/* ~/.local/share/applications/

# Add executable permissions
chmod +x ~/.local/share/applications/*.desktop
