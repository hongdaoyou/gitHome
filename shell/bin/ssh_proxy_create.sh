#!/bin/bash

# set -x
# 创建,代理服务. 访问远程的, 相当于,访问本地
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # ssh -D localhost:211  hdyTest@hongdaoyou.cn -p2222

    local localPort=$1 # 本地,分享的端口号
    local remotePort=$2

    local url=$3
    local dstPort=${4:-22} # 默认,是22端口

    ssh -R -R $remotePort:localhost:$localPort  $url -p${dstPort}

    # ssh -R 2000:localhost:3128 hdyTest@hongdaoyou.cn -p2222

}


fun "$@"

