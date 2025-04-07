#!/bin/bash

# set -x
# 不显示,空行
function fun() {
    if [ $# -eq 0 ];then
        # echo "请输入,参数"; exit 1;
        local msg=$(cat)
    else
        local file=$1
        local msg=$(cat $file);
    fi

    echo "$msg" | grep -v "^$"

}


fun "$@"

