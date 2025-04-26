#!/bin/bash

# set -x
# 发送,http请求
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local ip=$1
    local port=$2

    local s1=$(cat)

    echo $s1 | nc $ip $port

    # if [ -z "$file" ];then
    #     # telnet localhost 80
    #     telnet $ip $port
    # else
    #     if [ ! -f "$file" ];then
    #         echo "文件不存在"; exit 1
    #     fi
    #     set -x
    #     cat $file | nc $ip $port
    # fi


}


fun "$@"
