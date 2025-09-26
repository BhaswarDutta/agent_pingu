#!/bin/bash

# exit on failure
set -e

# Install Brave Browser
# Install dnf-plugins-core
sudo dnf install -y dnf-plugins-core

# Add Brave Repo
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

# Install Brave
sudo dnf install -y brave-browser

# [SUPER] + B to launch Brave with custom size/position
# Define the path for the new custom keybinding
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/brave/']"

# Set the name
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/brave/ name 'Brave Custom Window'

# Set the command to run
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/brave/ command 'brave-browser --window-size=1200,800 --window-position=100,100'

# Set the binding (Super+B)
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/brave/ binding '<Super>b'
