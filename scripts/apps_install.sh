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

# Install Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources

sudo apt update
sudo apt install brave-browser
