#!/bin/bash

# 将一行数据,转换成,多列数据
# set -x
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s1="$*"
    # local sym="${1: }"
    # local s1=$(cat)

    # echo "45 46.5 88.8 1.6" | tr -t " " "\n"

    echo $s1 | tr -t " " "\n"
    # echo "$s1" | sed ":a;N;\$!ba;s/$sym/\n/g"


}


fun "$*"

