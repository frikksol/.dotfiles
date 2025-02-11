#!/bin/bash

echo "Installing packages..."

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Terminal Tools
brew install bat eza fzf git htop lazygit lazydocker mdcat neovim ripgrep starship stow the_silver_searcher tree wget wezterm zoxide zsh 1password-cli zellij git-delta

# GUI Applications
# dozer is discontinued...
brew install --cask nikitabobko/tap/aerospace
brew install alt-tab bruno darktable figma slack intellij-idea linearmouse notion raycast spotify ticktick vlc zen-browser@twilight

# Fonts
brew install font-fira-mono-nerd-font font-hack-nerd-font font-jetbrains-mono-nerd-font font-jetbrains-mono

# Zap Package manager for zsh
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Set up bat cache
bat cache --builzz

# Info
echo "Remember to run fzf install script. See their installation instructions"
echo ""
echo "Applications to install manually: Docker Desktop, IntelliJ, OpenVpn, Ableton, pCloud, VsCode"
echo "Applications to install with npm -g: aws-cdk, aws-cdk-local, vercel"
echo ""
echo "Done!"

