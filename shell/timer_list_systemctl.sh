#!/bin/bash

# set -x
# systemd 列出 定时器
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s1=$1

    local content=$(systemctl list-timers)

    if [ -n "$s1" ];then
        echo "$content" | grep "$s1";
    else
        echo "$content";
    fi

}


fun "$@"

