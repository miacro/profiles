#alias grep='grep --color=auto'
#alias ls='ls --color=auto'
#eval $(dircolors -b)
##\w 完整路径 \W 当前目录
#PS1='${arch_chroot:+($arch_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$'
[[ -f ~/.aliasrc ]] && source ~/.aliasrc
[[ -f /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

