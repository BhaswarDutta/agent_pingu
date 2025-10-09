#!/bin/bash

# exit on failure
set -e

# Set Dark Mode for Gnome and GTK Apps
if [ "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'default'" ]; then
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
else
    gsettings set org.gnome.desktop.interface color-scheme 'default'
fi

# Install needed packages
sudo dnf install -y hyprland waybar rofi-wayland
# Enable COPR repo
sudo dnf copr enable -y solopasha/hyprland

# Install more packages
sudo dnf install -y swww hyprlock swaync

# Copy the Configs
cp -r "templates and configs/hypr" ~/.config/
cp -r "templates and configs/rofi" ~/.config/
cp -r "templates and configs/scripts" ~/.config/
cp -r "templates and configs/waybar" ~/.config/
# Copy the Wallpapers
cp -r Wallpapers/ ~/Pictures/

# Give permissions to the scripts
chmod +x ~/.config/waybar/launch.sh
chmod +x ~/.config/scripts/wallpaper.sh
chmod +x ~/.config/scripts/wallpaper_startup.sh
chmod +x ~/.config/rofi/rofi_launcher.sh

# Install certain utilities
sudo dnf install -y pavucontrol blueman papirus-icon-theme
flatpak install --assumeyes flathub it.mijorus.smile

# Set GTK Icon theme to papirus
gsettings set org.gnome.desktop.interface icon-theme "Papirus"

echo "✅ Hyprland setup complete!"
