#!/bin/bash

# 列出,service服务
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local service=$1

    if [ -z "$service" ];then
        systemctl --state=running
        exit
    fi

    local s1=$(systemctl -t service | grep "$service" )
    if [ -z "$s1" ];then
        s1=$(systemctl list-unit-files --type=service | grep "$service" )
    fi

    echo "$s1";

}


fun "$@"

