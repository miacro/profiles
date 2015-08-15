autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters

[[ -f /home/share/.oh-my-zsh-rc ]] && source /home/share/.oh-my-zsh-rc
[[ -f /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh
GREP_OPTIONS=""
source ~/.aliasrc
