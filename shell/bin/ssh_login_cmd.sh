#!/bin/bash

# set -x
# ssh登陆后,执行,某些命令
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local cmd=$1;

    local url=${2:-${HDY_YUN_HOST}} # 默认云主机

    set -x
    ssh $url $cmd

}

fun "$@"

