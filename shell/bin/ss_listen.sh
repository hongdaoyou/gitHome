#!/bin/bash

# set -x
# 查看,当前监听的端口号
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s1=$1

    # ss -ln | grep $s1
    local ret1=$(sudo ss -lnp | grep -v -E "u_str|u_seq|UNCONN")

    if [ -n "$s1" ];then
        echo "$ret1" | grep $s1
    else
        echo "$ret1"
    fi
    

}


fun "$@"

