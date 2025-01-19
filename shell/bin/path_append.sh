#!/bin/bash

# set -x
# 添加,PATH 路径
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local dir=$1
    if [ ! -d $dir ];then
        echo "不是,一个目录"; exit 1;
    fi

    export PATH=${dir}:${PATH}

    echo $PATH;
}


fun "$@"

