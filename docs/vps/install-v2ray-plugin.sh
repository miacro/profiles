#!/bin/sh
set -ex
VERSION=1.3.1
FILENAME=v2ray-plugin-linux-amd64
FETCH_URL=https://github.com/shadowsocks/v2ray-plugin/releases/download/v1.3.1/${FILENAME}-v${VERSION}.tar.gz
curl -fSL ${FETCH_URL} -o /tmp/${FILENAME}-v${VERSION}.tar.gz
tar -xvzf /tmp/${FILENAME}-v${VERSION}.tar.gz -C /tmp
[[ -f /tmp/v2ray-plugin_linux_amd64  ]] && mv /tmp/v2ray-plugin_linux_amd64 /usr/local/bin/v2ray-plugin
