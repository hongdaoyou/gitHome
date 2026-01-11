#!/bin/bash

# set -x
# 以默认的方式,打开某个文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=$1

    if [ ! -f "$file" ]; then
        echo "文件,不存在"; exit 1;
    fi

    xdg-open "$file"
}


fun "$@"

