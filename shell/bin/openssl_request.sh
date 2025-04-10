#!/bin/bash

# set -x
# 生成证书请求,并签名
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local key=${1:-server.key}
    # echo $key
    if [ ! -f "$key" ];then
        echo "私钥文件,不存在"; exit 1;
    fi

	# openssl req -new -key server.key -out server.csr
	openssl req -new -key ${key} -out server.csr
    echo "server.csr"

    # openssl x509 -req -days 36500 -in server.csr -signkey server.key -out server.crt
    openssl x509 -req -days 36500 -in server.csr -signkey ${key} -out server.crt

    echo "server.crt"

}


fun "$@"

