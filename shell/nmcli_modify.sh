#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    echo 'sudo nmcli connection modify "网络的 名字" ipv4.method manual ipv4.addresses 192.168.0.220/24 ipv4.gateway 192.168.0.1';
    # ipv4.dns "8.8.8.8 8.8.4.4"
    
    echo "请修改后,手动设置";


}


fun "$@"

