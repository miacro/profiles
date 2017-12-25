COMMON_HOME=~/.zsh-repository
[[ -d ${COMMON_HOME}/antigen/.git ]] \
|| git clone git://github.com/zsh-users/antigen.git ${COMMON_HOME}/antigen


[[ -f /etc/profile.d/autojump.sh ]] \
&& source /etc/profile.d/autojump.sh
#fpath=(${COMMON_HOME}/gentoo-zsh-completions/src $fpath)

##--------------------------------------------------------##
source ${COMMON_HOME}/antigen/antigen.zsh
ADOTDIR=${COMMON_HOME}/antigen-repos

# antigen bundle git://github.com/zsh-users/antigen.git
# Load the oh-my-zsh's library.
# antigen bundle git://github.com/robbyrussell/oh-my-zsh.git
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle svn
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle https://github.com/radhermit/gentoo-zsh-completions.git src
antigen bundle https://github.com/zsh-users/zsh-completions.git src
antigen bundle https://github.com/zsh-users/zsh-syntax-highlighting
antigen bundle https://github.com/voronkovich/gitignore.plugin.zsh.git

# Load the theme.
antigen theme clean
antigen theme Soliah

# Tell antigen that you're done.
antigen apply
##--------------------------------------------------------##

autoload -U compinit promptinit && compinit && promptinit
setopt completealiases
GREP_OPTIONS=""
