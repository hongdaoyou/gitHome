#!/bin/bash

# set -x
# 删除,网络连接
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s1=$1

    sudo nmcli connection delete $s1

}


fun "$@"

