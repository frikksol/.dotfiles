# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/hflex-aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"

# load and initialise completion system
autoload -Uz compinit
compinit

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide
eval "$(zoxide init zsh)"

# Add idea to path
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

# vim mode
bindkey -v

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
