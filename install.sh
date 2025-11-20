#!/bin/bash

# Neovim Config Installer

set -e

echo "Installing Neovim configuration..."

# Create config directory if it doesn't exist
mkdir -p ~/.config/nvim

# Backup existing config if present
if [ -f ~/.config/nvim/init.lua ]; then
    echo "Backing up existing config to ~/.config/nvim.backup..."
    cp -r ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)
fi

# Copy configuration files
echo "Copying configuration files..."
cp init.lua ~/.config/nvim/
cp lazy-lock.json ~/.config/nvim/

echo "✓ Installation complete!"
echo ""
echo "Launch Neovim to install plugins automatically:"
echo "  nvim"
