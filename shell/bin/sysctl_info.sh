#!/bin/bash

# 设置,系统参数
# set -x
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local key=$1
    local value=$2

    # echo $key
    # set -x
    ret=$(sudo sysctl -a | grep "$key")
    echo "$ret"

    if [ -n "$value" ]; then
        local keyName=$(echo $ret | awk '{print $1}' )
        sudo sysctl -w ${keyName}=${value}
        if [ $? -eq 0 ];then
            echo "设置成功";
        else
            echo "设置失败";
        fi
    fi

}


fun "$@"

