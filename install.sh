#!/bin/bash

echo "Installing packages..."

# Terminal Tools
brew install zsh starship exa bat ripgrep fzf zoxide kitty zellij 1password-cli eza htop mdcat neovim stow the_silver_searcher tree wget wezterm

# GUI Applications
brew install firefox alfred alt-tab amethyst bruno dozer linearmouse spotify vlc

# Fonts
brew install font-fira-mono-nerd-font font-hack-nerd-font font-jetbrains-mono-nerd-font

# Zap Package manager for zsh
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# Info
echo "Remember to run fzf install script. See their installation instructions"

