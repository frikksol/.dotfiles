# Frikks dotfiles
## How to use

1. Install GNU Stow with `brew install stow`
1. Clone the repo to your home folder
1. Enter repo
1. Apply configuration by running `stow */` or `stow hyper` for a specific package

## Overview
You can find an overview over the aliases in use in `./zsh/.config/zsh/aliases.zsh`

## Applications (WIP - should be turned to an install script)
zsh
zap (zsh package manager) zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 
starship
exa
bat
ripgrep
fzf
    Rememeber to run install script
    Alt+c Is an issue
zoxide
kitty
zellij

## Notes and thoughts
Used fig for a while and its super nice, but used 64GB of RAM at some point, so unusable for now...
entr: Not installet yet, but interesting to look at. It listens for file changes and executes commands on change.
