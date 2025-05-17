#!/bin/bash

echo "Installing packages..."
echo "Yay is a prerequisite"

# Terminal Tools
yay -S bat eza fzf git htop zoxide zsh the_silver_searcher tree wget ripgrep
yay -S lazygit lazydocker 
yay -S neovim mdcat starship stow zellij git-delta tmux
yay -S 1password-cli 

# Set zsh as default shell
chsh -s /usr/bin/zsh

# GUI Applications
yay -S google-chrome ghostty 
yay -S spotify vlc 

# launcher
yay -S wofi

# Zap Package manager for zsh
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Set up bat cache
bat cache --build

# Info
echo "Remember to run fzf install script. See their installation instructions"
echo ""
echo "Applications to install manually: Docker Desktop, IntelliJ, OpenVpn, Ableton, pCloud, VsCode"
echo "Applications to install with npm -g: aws-cdk, aws-cdk-local, vercel"
echo ""
echo "Done!"

