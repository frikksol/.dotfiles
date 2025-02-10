#!/bin/bash

echo "Installing packages..."

# Terminal Tools
brew install \ 
  zsh \ 
  starship \ # Terminal prompt
  bat \ # Improved cat
  ripgrep \ # Searching
  fzf \ # Fuzzy finding for everything
  zoxide \ # Improved cd
  1password-cli \ # CLI for 1Password
  eza \ # Improved ls
  htop \ # List process info
  mdcat \ # Markdown Reader
  neovim \ # Vim replacement
  stow \ # Dotfile management
  the_silver_searcher \ # Searching, simpler that ripgrep, but super useful
  tree \ # List folder tree structure, not installed by default on macs for some reason
  wget \ 
  lazygit \ # git TUI
  lazydocker \ # Docker TUI
  wezterm # Awesome terminal emulator

# GUI Applications
brew install \
  zen-browser@twilight \ # Browser. Twilight is with experimental features
  raycast \ # App launcer
  alt-tab \ # Enable alt-tab on mac
  bruno \ # Postman replacement
  dozer \ # Group things in the status bar
  linearmouse \ # Makes mouse linear on mac
  spotify \ # Music
  aerospace \ # Tiling window manager on mac
  darktable \ # Photo editing
  figma \
  ticktick \ # Todo
  vlc

# Fonts
brew install font-fira-mono-nerd-font font-hack-nerd-font font-jetbrains-mono-nerd-font

# Zap Package manager for zsh
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# Info
echo "Remember to run fzf install script. See their installation instructions"
echo ""
echo "Applications to install manually: Docker Desktop"
echo "Applications to install with npm -g: aws-cdk, aws-cdk-local, vercel"
echo ""
echo "Done!"

