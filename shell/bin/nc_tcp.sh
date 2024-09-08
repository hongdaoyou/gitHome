#!/bin/bash

# set -x

# 创建套接字
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入参数"; exit 1
    fi

    # local type=$1
    local ip="$1"
    local port=$2

    # if [[ ! "$type" =~ ^(t|u)$ ]];then
    #     echo '参数,必须是,t, 或者u'; exit 1
    # fi
    # type="-"$type

    if [ "$ip" = "*" ];then
        ip=''
    fi
    
    if [[ ! "$port" =~ ^[1-9]+$ ]];then
        echo "请输入端口号"; exit 1;
    fi

    # 监听, 0.0.0.0  下的端口
    optStr+=" $port ";

    # 执行命令
    # $( sudo nc $optStr ) 
    echo "正在打开,监听的端口 "$port
    while true; do
        # set -x
        local str=$(sudo nc -l -t $ip $port )
        # exit 
        echo "接收到: "$str
    done
    
}

fun "$@"


