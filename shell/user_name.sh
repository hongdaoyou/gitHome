#!/bin/bash

# set -x
# 显示,当前的所有用户

function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    local user1=$(cat /etc/passwd | awk -F':' '{print $1}')

    if [ -n "$s" ];then
        echo "$user1" | grep "$s"
    else
        echo "$user1"
    fi

}


fun "$@"

