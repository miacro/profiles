LOCAL_PATH=~/.local/bin:~/bin:~/bin/private:~/bin/utils:~/bin/kindlegen
LOCAL_LIB=~/.local/lib:~/.local/lib64
LOCAL_INC=~/.local/include
#`find -L /usr/local -regex "/usr/local.*/bin" -type d -printf %p:`
export PATH=${LOCAL_PATH}:${PATH}:/sbin:/usr/sbin:/usr/local/sbin
export LIBRARY_PATH=${LOCAL_LIB}:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${LOCAL_LIB}:${LD_LIBRARY_PATH}
export C_INCLUDE_PATH=${LOCAL_INC}:${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH=${LOCAL_INC}:${C_INCLUDE_PATH}

export EDITOR="vim" 
alias grep='grep --color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'
