#!/bin/bash
# set -x

# 向套接字,发送信息
function fun() {
    if [ $# -lt 4 ];then
        echo "请输入参数"; exit 1
    fi

    # local msg=$(cat)
    local type=$1
    local ip=$2
    local port=$3
    local msg=$4

    if [[ ! $type =~ ^t|u$ ]];then
        echo '参数,必须是,t, 或者u'; exit 1
    fi

    type="-"$type


    # 发送完,立马,就结束
    local optStr=" -N ";

    set -x
    echo "$msg" | nc $optStr $type $ip $port

}

fun "$@"