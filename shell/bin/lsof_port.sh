#!/bin/bash

# 查看,端口号,与哪些外网ip,通信
function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    local port=$1
    
    lsof -i :${port}
}


fun $1

