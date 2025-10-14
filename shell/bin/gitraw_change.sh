#!/bin/bash

# set -x
# 将 github.com  转换成, raw.githubusercontent.com
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local fileName=$1

    re1='s/github.com/raw.githubusercontent.com/g; s/\/blob//g;'
    
    sed -i -E "$re1" "$fileName"

    re1=''

}

fun "$@"

