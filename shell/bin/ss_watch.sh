#!/bin/bash

# set -x
# 查看,某个报文
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local pack=$1

    # sudo watch ss -t state SYN-RECV
    sudo watch -n1 ss -t state $pack

}


fun "$@"

