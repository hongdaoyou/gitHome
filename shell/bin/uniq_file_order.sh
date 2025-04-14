#!/bin/bash

# set -x
# 去除,非空行的重复行 | 保持,原有顺序
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=$1

    if [ $# -eq 0 ]; then
        echo "请输入参数"; exit 1;
    fi

    if [ ! -f $file ]; then
        echo "文件,不存在"; exit 1;
    fi

    awk '!NF || !seenArr[$0]++' $file | uniq

}


fun "$@"

