#!/bin/bash

# 临时改变ip
function ifconfig_ip() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local newIp=$1

    local confirm=$2
    
    # 设备名
    local device=$(ifconfig | grep RUNNING | grep -E "enp|wlp"  | awk -F":" '{print $1}')

    # 现在的ip
    local ip=$(ifconfig $device | grep "inet "  | awk '{print $2}')


    echo "之前的ip "$ip

    if [[ -n "$confirm" && $confirm -eq 1 ]];then
        # 改变ip 地址
        sudo ifconfig $device $newIp

        ip=$(ifconfig $device | grep "inet "  | awk '{print $2}')
        echo "现在的ip "$ip

    fi
}


ifconfig_ip $@

