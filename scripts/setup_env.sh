#!/bin/bash

# setup_env.sh - A simple script to install common development tools.
# Author: D-Voncleph
# Date: June 27, 2025

echo "--- Updating package list ---"
sudo apt update

# Check if update was successful (basic error handling)
if [ $? -ne 0 ]; then
    echo "Error: apt update failed. Exiting."
    exit 1
fi

echo "--- Installing essential tools: git, curl, tree, htop, wget ---"
sudo apt install git curl tree htop wget -y

# Check if installation was successful
if [ $? -ne 0 ]; then
    echo "Error: apt install failed. Some packages might not have installed correctly. Exiting."
    exit 1
fi

echo "--- Installation complete! ---"
echo " You can now use: git, curl, tree, htop, wget"


