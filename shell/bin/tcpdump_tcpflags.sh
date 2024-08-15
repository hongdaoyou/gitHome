#!/bin/bash

# set -x
# 根据ip,或端口号. 抓取,指定的tcp报文
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local ip=$1
    local pack=$2

    if [[ $ip =~ ^[0-9]+$ ]];then
        # 端口号
        option=" port $ip ";
    else
        option=" host $ip ";
    fi
    local packStr;
    if [ -n "$pack" ];then
        packStr="tcp[tcpflags] & tcp-${pack} != 0 "
    else
        packStr="tcp"
    fi
    # sudo tcpdump -i any 'tcp[tcpflags] & tcp-syn != 0' and dst 192.168.1.10
    
    set -x
    sudo tcpdump -i any "$packStr " and $option 

}


fun "$@"

