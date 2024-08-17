#!/bin/bash

# set -x
# 向终端,发送信息
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local user=$1
    local msg=$2

    echo "$msg"  | write $user

}


fun "$@"

