#!/bin/bash

# echo $0
script_name=$(basename $0)
function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    local fileName=$1
    local str=$(ps -ef | grep -i "$fileName" | grep -v -P "grep|${script_name}")

    if [ -z "$str" ]; then
        echo "没找到"
    else
        echo "$str"
    fi
}


fun $1

