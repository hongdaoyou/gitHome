#!/bin/bash

# set -x
# 对路由,进行操作
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    # 默认路由
    # route add default gw 192.168.1.199  dev a1

    # 网段,路由
    # route add -net 1.2.4.0  netmask 255.255.255.0  gw 0.0.0.0 dev wlp3s0

}


fun "$@"

