#!/bin/bash

# Neovim Config Installer
set -e
mkdir -p ~/.config/nvim
echo "Copying configuration files..."
cp init.lua ~/.config/nvim/
cp lazy-lock.json ~/.config/nvim/
echo "Installation complete!"
