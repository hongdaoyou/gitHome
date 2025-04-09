#!/bin/bash

# set -x
# 访问,远程的. 相当于,访问,本地 | 提供本地的服务
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # ssh -D localhost:211  hdyTest@hongdaoyou.cn -p2222

    local srcPort=$1
    local url=$2
    local dstPort=$3

    # ssh -R localhost:${srcPort}  $url -p${dstPort}
    ssh -R 6666:localhost:80 hdyTest@hongdaoyou.cn -p2222
}


fun "$@"

