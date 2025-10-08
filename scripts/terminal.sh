#!/bin/bash

# exit on failure
set -e

# Install Alacritty Terminal
sudo dnf install -y alacritty fish fastfetch curl

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

# Copy Fish Config
mkdir -p ~/.config/fish
cp "templates and configs/config.fish" ~/.config/fish/config.fish
echo "Fish config Installed"

# Install Starship Prompt
curl -sS https://starship.rs/install.sh | sh

# Copy Starship Config
cp "templates and configs/starship.toml" ~/.config/starship.toml

# Copy Fastfetch Config
cp -r "templates and configs/fastfetch" ~/.config/

# Add COPR repo for eza and install eza
sudo dnf copr enable alternateved/eza
sudo dnf install -y eza
