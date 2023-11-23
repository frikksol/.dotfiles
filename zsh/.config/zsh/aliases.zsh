# Neovim
alias vim='nvim'

# git
alias gs='git status'
alias g-='git switch -'
alias gsw='git switch'
alias gamend='git commit --amend'
alias gnb='git switch -c'
alias gm='git switch main'

# directories
alias home='cd $HOME'
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
alias c-hyper='vim $HOME/.hyper.js'

# actions
alias rcsource='source $HOME/.zshrc'

# applications
alias python='python3'
alias pip='pip3'
