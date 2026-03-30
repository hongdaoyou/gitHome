#!/bin/bash

# set -x
# 将驼峰命名,转换为下划线命名
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s1=$1
    local type=$2

    if [ $# -eq 1 ];then
        echo "$s1" | sed -e 's/\([A-Z]\)/_\L\1/g' -e 's/\([0-9]\)/_\1/g' -e 's/^_//' -e 's/__/_/g'
        
        # echo "$input" | perl -pe 's/(?<=[a-z0-9])(?=[A-Z])/_/g; s/(?<=[A-Z])(?=[A-Z][a-z])/_/g; s/(?<=[a-zA-Z])(?=[0-9])/_/g; s/(?<=[0-9])(?=[a-zA-Z])/_/g; $_ = lc($_)'
    else
        echo "$s1" | sed -r 's/(^|_)([a-z0-9])/\u\2/g'
    fi

}


fun "$@"

