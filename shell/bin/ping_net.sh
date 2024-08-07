#!/bin/bash

# 不过,比较慢. 一秒1个
function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    local ip1=${1%.*}

    for num in {1..255};do
        
        ip=${ip1}.${num};
        ping -c 1 -w 1 ${ip} >/dev/null 2>&1;
        if [ $? -eq 0 ];then
            echo "${ip} alive";
        else
            echo "${ip} down";
        fi
    done

}


fun $1

