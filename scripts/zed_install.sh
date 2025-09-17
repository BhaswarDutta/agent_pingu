#!/bin/bash

# exit on failure
set -e

curl -f https://zed.dev/install.sh | sh

# Install Zed CLI
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
