#!/bin/bash

echo "Installing packages..."

# Terminal Tools
brew install \ 
  bat \ # Improved cat
  eza \ # Improved ls
  fzf \ # Fuzzy finding for everything
  git \ 
  htop \ # List process info
  lazygit \ # git TUI
  lazydocker \ # Docker TUI
  mdcat \ # Markdown Reader
  neovim \ # Vim replacement
  ripgrep \ # Searching
  starship \ # Terminal prompt
  stow \ # Dotfile management
  the_silver_searcher \ # Searching, simpler that ripgrep, but super useful
  tree \ # List folder tree structure, not installed by default on macs for some reason
  wget \ 
  wezterm # Awesome terminal emulator
  zoxide \ # Improved cd
  zsh \ 
  1password-cli \ # CLI for 1Password

# GUI Applications
brew install \ 
  aerospace \ # Tiling window manager on mac
  alt-tab \ # Enable alt-tab on mac
  bruno \ # Postman replacement
  darktable \ # Photo editing
  dozer \ # Group things in the status bar
  figma \ 
  linearmouse \ # Makes mouse linear on mac
  notion \ 
  raycast \ # App launcer
  spotify \ # Music
  ticktick \ # Todo
  vlc
  zen-browser@twilight \ # Browser. Twilight is with experimental features

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

