autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

[[ -f /usr/local/share/.oh-my-zsh-rc ]] && source /usr/local/share/.oh-my-zsh-rc
GREP_OPTIONS=""
source ~/.aliasrc
