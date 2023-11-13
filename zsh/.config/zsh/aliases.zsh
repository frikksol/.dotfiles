# Neovim
alias vim='nvim'

# git
alias gs='git status'
alias g-='git switch -'
alias gw='git switch'
alias ga='git commit --amend'
alias gc='git switch -c'
alias gm='git switch master'

# directories
alias home='cd $HOME'
alias dev='cd $HOME/development'
alias repos='cd $HOME/repos'
alias config='cd $HOME/.config'
alias dotfiles='cd $HOME/.dotfiles'

# navigation
alias l='exa -la --git'
alias tree='exa -T'
alias cd='z'
alias cdd='z -'

# files
alias cat='bat'
alias rgg='rg -S -L -p -uuu'
alias zv='vim $(fzf)'
alias zd='cd $(find * -type d | fzf)'

# configuration
alias c-zsh='vim $HOME/.zshrc'
alias c-aliases='vim $HOME/.config/zsh/aliases.zsh'
alias c-exports='vim $HOME/.config/zsh/exports.zsh'
alias c-starship='vim $HOME/.config/starship.toml'
alias c-vim='vim $HOME/.config/nvim/init.lua'

# actions
alias rcsource='source $HOME/.zshrc'
