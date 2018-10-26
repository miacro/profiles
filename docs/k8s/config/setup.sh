CURDIR=$(dirname $(realpath $0))
CERTDIR=${CURDIR}/certs
export MASTER_IP=192.168.0.2
export MASTER_CLUSTER_IP=168.8.0.2
export CLUSTER_NAME=miacro-k8s

export CA_CERT=${CERTDIR}/ca.crt
export MASTER_CERT=${CERTDIR}/server.crt
export MASTER_KEY=${CERTDIR}/server.key

export CLI_CERT=${CERTDIR}/client.crt
export CLI_KEY=${CERTDIR}/client.key
export TOKEN=$(cat ${CURDIR}/token-auth.csv | cut -d ',' -f 1 -)
export USER=$(cat ${CURDIR}/token-auth.csv | cut -d ',' -f 2 -)

export CONTEXT_NAME=miacro-context

kubectl config set-cluster $CLUSTER_NAME --certificate-authority=$CA_CERT --embed-certs=true --server=https://$MASTER_IP:6443

kubectl config set-credentials $USER --client-certificate=$CLI_CERT --client-key=$CLI_KEY --embed-certs=true --token=$TOKEN

kubectl config set-context $CONTEXT_NAME --cluster=$CLUSTER_NAME --user=$USER

kubectl config use-context $CONTEXT_NAME

