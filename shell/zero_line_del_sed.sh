#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file=$1

    if [ ! -f "$file" ];then
        echo "文件,不存在"; exit 1;
    fi

    sed -i -z 's/\n\n\+/\n\n/g' $file

}


fun "$@"

