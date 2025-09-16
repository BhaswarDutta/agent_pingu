#!/bin/bash

# exit on failure
set -e

# Install base packages from Ubuntu repos
sudo apt install -y \
    alacritty \
    build-essential \
    python3 \
    python3-pip \
    gnome-tweaks \
    gnome-shell-extension-manager \
    mpv \
    git \
    curl
