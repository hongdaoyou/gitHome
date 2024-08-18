#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # ssh -D localhost:211  hdyTest@hongdaoyou.cn -p2222

    local srcPort=$1
    local url=$2
    local dstPort=$3

    ssh -D localhost:${srcPort}  $url -p${dstPort}

}


fun "$@"

