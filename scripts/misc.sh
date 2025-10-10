#!/bin/bash

# exit on failure
set -e

# Install misc apps
sudo dnf install -y qbittorrent mpv obs-studio kdenlive
flatpak install -y flathub org.localsend.localsend_app
