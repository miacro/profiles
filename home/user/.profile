LOCAL_LIB=~/.local/lib:~/.local/lib64
LOCAL_INC=~/.local/include
#`find -L /usr/local -regex "/usr/local.*/bin" -type d -printf %p:`
export LIBRARY_PATH=${LOCAL_LIB}:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${LOCAL_LIB}:${LD_LIBRARY_PATH}
export C_INCLUDE_PATH=${LOCAL_INC}:${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH=${LOCAL_INC}:${C_INCLUDE_PATH}

export PATH=${PATH}:/sbin:/usr/sbin:/usr/local/sbin
export PATH=~/node_modules/.bin:${PATH}
export PATH=~/.local/bin:${PATH}
export PATH=~/bin:~/bin/private:~/bin/utils:~/bin/kindlegen:${PATH}
[[ -f ~/.pathrc ]] && source ~/.pathrc

export EDITOR="vim" 
export TERM=xterm-256color
alias grep='grep --color=auto --exclude-dir=node_modules --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'
