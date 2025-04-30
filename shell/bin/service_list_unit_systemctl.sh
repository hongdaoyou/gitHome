#!/bin/bash

# 列出,service服务
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local service=$1

    # if [ -z "$service" ];then
    #     # 列出,所有的
    #     systemctl --state=running 
    #     exit
    # fi

    # 为了,获取,其全称的名字
    local s1=$(systemctl -t service | grep -i "$service" )
    if [ -z "$s1" ];then
        s1=$(systemctl list-unit-files --type=service | grep  -i "$service" )
    fi

    if [ -n "$s1" ];then
        systemctl status $(echo $s1 | awk NR=1'{print $1}')
    else
        echo "没找到"
    fi

    echo "$s1";

}


fun "$@"

