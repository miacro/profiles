#!/bin/bash


xray_keys_file=./xray-keys
echo -e "xray uuid:\n$(xray uuid)" > ${xray_keys_file}

echo -e "\n\nxray x25519:\n$(xray x25519)" >> ${xray_keys_file}

echo -e "\n\nshortId:\n$(openssl rand -hex 8)" >> ${xray_keys_file}

echo -e "\n\nhysteria auth:\n$(openssl rand -hex 12)" >> ${xray_keys_file}

echo -e "\n\ntuic uuid:\n$(xray uuid)" >> ${xray_keys_file}
echo -e "\n\ntuic password:\n$(openssl rand -hex 16)" >> ${xray_keys_file}
