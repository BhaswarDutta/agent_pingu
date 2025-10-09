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
