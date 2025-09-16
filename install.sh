#!/bin/bash

# exit on failure
set -e

# Make sure all app scripts are executable
chmod +x scripts/apps/*.sh

# Run install scripts
echo -e "\e[34m▶ Running base_install.sh...\e[0m"
./scripts/apps/base_install.sh
echo -e "\e[32m✅ base_install.sh completed\e[0m"

echo -e "\e[34m▶ Running brave_install.sh...\e[0m"
./scripts/apps/brave_install.sh
echo -e "\e[32m✅ brave_install.sh completed\e[0m"

echo -e "\e[34m▶ Running zed_install.sh...\e[0m"
./scripts/apps/zed_install.sh
echo -e "\e[32m✅ zed_install.sh completed\e[0m"
