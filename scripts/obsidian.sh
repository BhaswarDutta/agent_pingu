#!/bin/bash

# exit on failure
set -e

# Install Obsdian
flatpak install -y flathub md.obsidian.Obsidian

# Grant Obsidian access to Wayland, fallback X11, D-Bus session, and the Wayland socket
flatpak override --user \
  --socket=wayland \
  --socket=fallback-x11 \
  --socket=session-bus \
  --filesystem=xdg-run/wayland-1 \
  md.obsidian.Obsidian

# Force Obsidian (Electron/Qt) to use Wayland for a native Wayland experience
flatpak override --user \
  --env=QT_QPA_PLATFORM=wayland \
  --env=GDK_BACKEND=wayland \
  --env=ELECTRON_OZONE_PLATFORM_HINT=wayland \
  md.obsidian.Obsidian
