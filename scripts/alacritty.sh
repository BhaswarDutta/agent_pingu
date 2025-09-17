#!/bin/bash

# exit on failure
set -e

# Download and Install JetBrainsMono Nerd Font

wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

unzip JetBrainsMono.zip -d JetBrainsMonoNerdFont

mkdir -p ~/.local/share/fonts
mv JetBrainsMonoNerdFont/* ~/.local/share/fonts/
fc-cache -fv
fc-list | grep "JetBrainsMono"
