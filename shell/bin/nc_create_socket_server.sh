#!/bin/bash

# set -x

# 创建套接字
function create_socket() {

    local port=${1}
    local optStr=" -l ";
    # local optStr=" -lv ";

    if [[ ! "$port" =~ ^[1-9]+$ ]];then
        echo "请输入端口号"; exit 1;
    fi

    # 默认 tcp, 
    if [ $# -eq 1 ];then
        optStr+=" -t "
    else
        optStr+=" -u "
    fi

    # 监听, 0.0.0.0  下的端口
    optStr+=" $port ";

    # optStr+=" 127.0.0.1 $port ";
    # optStr+=" 0.0.0.0 $port ";

    # 执行命令
    # $( sudo nc $optStr ) 
    echo "正在打开,监听的端口 "$port
    local str=$(nc $optStr )
    echo "接收到: "$str
}

create_socket $1 $2


