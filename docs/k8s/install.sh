#!/bin/bash
export CLUSTER_NAME=test-cluster
export MASTER_IP=192.168.0.80
export CONTEXT_NAME=test-context
export USER=test-user
kubectl config set-cluster $CLUSTER_NAME --server=http://$MASTER_IP --insecure-skip-tls-verify=true
kubectl config set-context $CONTEXT_NAME --cluster=$CLUSTER_NAME --user=$USER
kubectl config use-context $CONTEXT_NAME
