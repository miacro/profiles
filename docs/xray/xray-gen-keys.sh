#!/bin/bash


xray_keys_file=./xray-keys
echo "xray uuid:" > ${xray_keys_file}
echo -e $(xray uuid) >> ${xray_keys_file}

echo -e "\n\nxray x25519:" >> ${xray_keys_file}
echo -e $(xray x25519) >> ${xray_keys_file}

echo -e "\n\nshortId:" >> ${xray_keys_file}
echo -e $(openssl rand -hex 8) >> ${xray_keys_file}

echo -e "\n\nhysteria auth" >> ${xray_keys_file}
echo -e $(openssl rand -hex 12) >> ${xray_keys_file}
