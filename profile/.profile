export ACE_ROOT=~/ace/ACE_wrappers
export LOCAL_ROOT=~/local

export LOCAL_LIB=~/local/lib
export LOCAL_INC=~/local/include

EHR_SRC=~/cqthink/ehr_svc_v3/src
EHR_LIB=~/cqthink/ehr_svc_v3/lib/linux

QT54_ROOT=${LOCAL_ROOT}/Qt5.4.0/5.4/gcc
QT54_BIN=${QT5_ROOT}/bin
QT54_LIB=${QT5_ROOT}/lib
QT54_INC=${QT5_ROOT}/include

QT53_ROOT=${LOCAL_ROOT}/Qt5.3.2/5.3/gcc
QT53_BIN=${QT5_ROOT}/bin
QT53_LIB=${QT5_ROOT}/lib
QT53_INC=${QT5_ROOT}/include

export PATH=$PATH:~/bin:${LOCAL_ROOT}/bin/:/sbin:/usr/sbin:/usr/local/sbin:${QT53_BIN}

export C_INCLUDE_PATH=${C_INCLUDE_PATH}:${LOCAL_INC}:${EHR_SRC}
export CPLUS_INCLUDE_PATH=${C_INCLUDE_PATH}:${LOCAL_INC}:${EHR_SRC}
export LIBRARY_PATH=${LD_LIBRARY_PATH}:${LOCAL_LIB}:${EHR_LIB}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${LOCAL_LIB}:${EHR_LIB}

export EDITOR="vim" 
