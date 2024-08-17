#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # 库名
    local name=$1
    local confirm=$2

    if [ -z "$name" ];then
        pip3 list
    else
        local name1=$(pip3 list | grep $name)
        
        local name2=$(echo "$name1" | awk 'NR==1{print $1}')

        # 如果,看具体的信息. 要确认下
        if [[ -n "$name2"  && -n "$confirm" ]];then
            pip3 show $name2
        else
            echo "$name1"
        fi
    fi



}


fun "$@"

