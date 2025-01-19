#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local key=$1

    local s1=$(git config -l)

    local s2=$(echo "$s1" | grep $key)

    local key1=$(echo "$s2" | awk -F'=' 'NR==1{print $1}')
    echo $key1

    git config --unset $key1 

}


fun "$@"

