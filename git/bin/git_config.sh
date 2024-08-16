#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local key=$1
    local value=$2

    local s1=$(git config -l)

    local s2=$(echo "$s1" | grep $key)

    if [ $# -eq 0 ];then
        echo "$s1";
    elif [ $# -eq 1 ];then
        echo "$s2"
    else
        local key1=$(echo "$s2" | awk -F'=' 'NR==1{print $1}')
        echo $key1

        # 删除,某个变量
        if [ $value = "unset" ];then
            git config --unset $key1 
        else
            git config $key1 $value
        fi
    fi

}


fun "$@"

