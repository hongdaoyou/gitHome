#!/bin/bash


function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local service=$1
    local confirm=$2

    # systemctl -a | grep  
    local s1=$(systemctl list-unit-files --type=service | grep "$service" )
    echo $s1;
    
    local serviceName=$(echo $s1 | awk '{print $1}')
    echo $serviceName;

    if [[ -n "$confirm" && "$confirm" -eq 1 ]];then
        sudo systemctl stop $serviceName
        
        if [ $? -eq 0 ];then
            echo "停止,该服务";
        else
            echo "停止,失败";
        fi
    fi
}


fun "$@"

