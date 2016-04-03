export ACE_ROOT=~/ace/ACE_wrappers
#export ACE_LIB=${ACE_ROOT}/lib

#EHR_SRC=~/cqthink/ehr_svc_v3/src
EHR_LIB=~/cqthink/dependencies/lib/linux

export C_INCLUDE_PATH=${C_INCLUDE_PATH}:${EHR_SRC}
export CPLUS_INCLUDE_PATH=${CPLUS_INCLUDE_PATH}:${EHR_SRC}
export LIBRARY_PATH=${LD_LIBRARY_PATH}:${EHR_LIB}:${ACE_LIB}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${EHR_LIB}:${ACE_LIB}

export EDITOR="vim" 

USER_PATH=~/bin:~/bin/private:~/bin/fq-scripts
ANDROID_PATH=~/bin/android-sdk-linux/tools:~/bin/android-sdk-linux/platform-tools:~/bin/android-sdk-linux/build-tools
ANDROID_PATH=${ANDROID_PATH}:~/bin/android-studio/bin:~/bin/android-ndk-r10e
USER_PATH=${USER_PATH}:${ANDROID_PATH}

LOCAL_BIN=`find -L /usr/local -regex "/usr/local.*/bin" -type d -printf %p:`
LOCAL_LIB=`find -L /usr/local -regex "/usr/local.*/lib" -type d -printf %p:`
LOCAL_INC=`find -L /usr/local -regex "/usr/local.*/include" -type d -printf %p:`

export PATH=${LOCAL_BIN}$PATH:${USER_PATH}:/sbin:/usr/sbin:/usr/local/sbin
export LIBRARY_PATH=${LOCAL_LIB}${LIBRARY_PATH}
export LD_LIBRARY_PATH=${LOCAL_LIB}${LD_LIBRARY_PATH}
export C_INCLUDE_PATH=${LOCAL_INC}${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH=${LOCAL_INC}${C_INCLUDE_PATH}

#source ~/.proxyrc
