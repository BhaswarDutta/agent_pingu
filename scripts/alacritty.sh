#!/bin/bash

# exit on failure
set -e

# Install Alacritty Terminal
sudo dnf install -y alacritty

# Download and Install JetBrainsMono Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMonoNerdFont
mkdir -p ~/.local/share/fonts
mv JetBrainsMonoNerdFont/* ~/.local/share/fonts/
rm -rf JetBrainsMonoNerdFont
rm -f JetBrainsMono.zip
fc-cache -fv
fc-list | grep "JetBrainsMono" || echo "JetBrainsMono Nerd Font Installation Failed"


# Copy Alacritty Config
mkdir -p ~/.config/alacritty
cp "templates and configs/alacritty.toml" ~/.config/alacritty/alacritty.toml
echo "Alacritty config Installed"

# [SUPER] + T to launch Alacritty
# Define the path for the new custom keybinding
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/alacritty/']"

# Set the name
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/alacritty/ name 'Alacritty'

# Set the command to run
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/alacritty/ command 'alacritty'

# Set the binding (Super+t)
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/alacritty/ binding '<Super>t'
