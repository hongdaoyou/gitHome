#!/bin/bash

# set -x
# 列出,监听的端口号 udp, 和tcp
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local port=$1

    local ret=$(sudo ss -lntup  | awk '{print $5}' | grep -v Local | awk -F':' '{print $NF}' |  sort -u )

    # local ret1=$(sudo ss -lnp | grep -v -E "u_str|u_seq"| tr -s ' ') 
    if [ -n "$port" ];then
        echo "$ret" | grep $port
    else
        echo "$ret"
    fi
    
}


fun "$@"

