#!/bin/bash

# set -x

function tcpdump_msg() {

    # ip port   
    # tcp udp  就不指定了
    if [ $# -eq 0 ];then
        echo "请输入,要抓取的ip, 和端口号"; exit 1;
    fi
    # 任意节点 的  抓取全部, asii 显示
    local optStr="-i any -s0 -A ";

    local ip;
    local port;

    # 如果,第一个是数字,则只监听,端口号
    if [[ "$1" =~ ^[0-9]+$ ]];then
        port=$1;
        optStr+=" port $port "
    else
        ip=$1
        optStr+=" host $ip "

        # 借了端口号
        if [ $# -eq 2 ];then
            port=$2;
            optStr+=" and port $port "
        fi
    fi

    echo "开始抓取"
    sudo tcpdump $optStr 

}


tcpdump_msg $1 $2

