export C_INCLUDE_PATH=${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH=${CPLUS_INCLUDE_PATH}
export LIBRARY_PATH=${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}

export EDITOR="vim" 

LOCAL_PATH=~/.local/bin:~/bin:~/bin/private:~/bin/shell-scripts:~/bin/kindlegen
LOCAL_LIB=~/.local/lib:~/.local/lib64
LOCAL_INC=~/.local/include

#`find -L /usr/local -regex "/usr/local.*/bin" -type d -printf %p:`

export PATH=${LOCAL_PATH}:${PATH}:/sbin:/usr/sbin:/usr/local/sbin
export LIBRARY_PATH=${LOCAL_LIB}:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${LOCAL_LIB}:${LD_LIBRARY_PATH}
export C_INCLUDE_PATH=${LOCAL_INC}:${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH=${LOCAL_INC}:${C_INCLUDE_PATH}

#source ~/.proxyrc
