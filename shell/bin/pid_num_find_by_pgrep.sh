#!/bin/bash


function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=$1

    pgrep -d ',' -i $name

}


fun $1

