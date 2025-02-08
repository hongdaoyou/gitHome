#!/bin/bash


function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    local fileName=$1
    local str=$(ps -ef | grep "$fileName" | grep -v -P "grep|pid_ps_find_byName.sh")

    if [ -z "$str" ]; then
        echo "没找到"
    else
        echo "$str"
    fi
}


fun $1

