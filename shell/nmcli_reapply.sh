#!/bin/bash

# set -x
# 重启,网络
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=$1

    sudo nmcli device reapply $name

}


fun "$@"

