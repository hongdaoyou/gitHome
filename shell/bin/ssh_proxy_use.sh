#!/bin/bash

# set -x
# 将本地的端口, 通过 远程的地址,分享出去. 访问,远程的端口,相当于,访问本地
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # ssh -D localhost:211  hdyTest@hongdaoyou.cn -p2222

    local srcPort=$1
    local url=$2
    local dstPort=${3:-22} # 默认,是22端口

    ssh -D localhost:${srcPort}  $url -p${dstPort}

}


fun "$@"

