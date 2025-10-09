#!/bin/bash

# exit on failure
set -e

curl -f https://zed.dev/install.sh | sh

# Copy zed config and keybind
cp -r "templates and configs/zed" ~/.config
