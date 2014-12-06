export PATH=$PATH:/home/aq/fqaq-bin:/home/aq/software/bin/:/sbin:/usr/sbin:/usr/local/sbin

export ACE_ROOT=~/ace/ACE_wrappers
export EHR_SRC=~/cqthink/cor2/ehr_svc_v3/src
export EHR_LIB=~/cqthink/cor2/ehr_svc_v3/lib/linux
export C_INCLUDE_PATH=${C_INCLUDE_PATH}:${ACE_ROOT}:${EHR_SRC}
export CPLUS_INCLUDE_PATH=${C_INCLUDE_PATH}:${ACE_ROOT}:${EHR_SRC}
export LIBRARY_PATH=${LD_LIBRARY_PATH}:${ACE_ROOT}/lib:${EHR_LIB}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${ACE_ROOT}/lib:${EHR_LIB}

export EDITOR="vim" 
