#!/bin/bash

# set -x
# 监听,指定的报文
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local pack=${1:-established}

    #  watch -n1  ss -t state SYN-RECV
    #  watch -n1  ss -t state close-wait
    
    watch -n0.01  ss -tn state $pack
}


fun "$@"

