#!/bin/bash

# exit on failure
set -e

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
