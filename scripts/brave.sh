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

# Make sure Brave is closed
pkill brave-browser || true  # ignore error if Brave isn't running

# Ensure Brave profile directory exists
mkdir -p "$HOME/.config/BraveSoftware/Brave-Browser/Default"

# Copy Brave config
unzip -o "$HOME/agent_pingu/templates and configs/brave-template.zip" -d "$HOME/.config/BraveSoftware/Brave-Browser/Default"

# Make sure User owns the files
chown -R $USER:$USER "$HOME/.config/BraveSoftware/Brave-Browser/Default"
