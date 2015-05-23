export ACE_ROOT=~/ace/ACE_wrappers
#export ACE_LIB=${ACE_ROOT}/lib
export LOCAL_ROOT=~/local

export LOCAL_LIB=~/local/lib
export LOCAL_INC=~/local/include

#EHR_SRC=~/cqthink/ehr_svc_v3/src
EHR_LIB=~/cqthink/dependencies/linux/lib

export C_INCLUDE_PATH=${C_INCLUDE_PATH}:${LOCAL_INC}:${EHR_SRC}
export CPLUS_INCLUDE_PATH=${C_INCLUDE_PATH}:${LOCAL_INC}:${EHR_SRC}
export LIBRARY_PATH=${LD_LIBRARY_PATH}:${LOCAL_LIB}:${EHR_LIB}:${ACE_LIB}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${LOCAL_LIB}:${EHR_LIB}:${ACE_LIB}

export EDITOR="vim" 

export PATH=$PATH:~/bin:~/bin/fq_scripts:~/bin/private:${LOCAL_ROOT}/bin/:/sbin:/usr/sbin:/usr/local/sbin

#source ~/.proxyrc
