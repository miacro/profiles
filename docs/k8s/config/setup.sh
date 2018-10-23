CURDIR=$(dirname $(realpath $0))
CERTDIR=${CURDIR}/certs
export MASTER_IP=192.168.0.80
export MASTER_CLUSTER_IP=168.8.8.2
export CLUSTER_NAME=miacro-k8s

export CA_CERT=${CERTDIR}/ca.crt
export MASTER_CERT=${CERTDIR}/server.crt
export MASTER_KEY=${CERTDIR}/server.key

export CLI_CERT=${CERTDIR}/client.crt
export CLI_KEY=${CERTDIR}/client.key
export TOKEN=$(cat ${CURDIR}/token-auth-file.csv | cut -d ',' -f 1 -)

export CONTEXT_NAME=miacro-context
