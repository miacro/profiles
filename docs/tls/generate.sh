#!/bin/sh
export MASTER_IP=192.168.0.2

openssl genrsa -out ca.key 2048
openssl req -x509 -new -nodes -key ca.key -subj "/CN=${MASTER_IP}" -days 10000 -out ca.crt


openssl genrsa -out server.key 2048
openssl req -new -key server.key -out server.csr -config csr.conf
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key \
  -CAcreateserial -out server.crt -days 10000 \
  -extensions v3_ext -extfile csr.conf



openssl genrsa -out client.key 2048
openssl req -new -key client.key -out client.csr -config csr.conf
openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key \
  -CAcreateserial -out client.crt -days 10000 \
  -extensions v3_ext -extfile csr.conf
