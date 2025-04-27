#!/bin/bash

# set -x
# 扫描,ip
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local localIp=$(ip addr | grep "inet " | grep -v  -P ' lo|docker'  | awk 'NR=1{print $2}')
    # echo $localIp;

    if [ -z "$localIp" ]; then
        echo "未联网"; exit 1;
    fi

    # 扫描的ip
    local ip=${1:-$localIp}


    # 扫描的类型
    # local scanType=${2:-S}

    # nmap -sS 192.168.100.1/24 

    # set -x
    sudo nmap -sP $ip | grep "Nmap scan report" | awk '{print $5}'

}


fun "$@"

