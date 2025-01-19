#!/bin/bash

# set -x
# 当前目录的文件,按照,大小,排序
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local d1=$1

    ls -l -S $d1

}


fun "$@"

