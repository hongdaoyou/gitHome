#!/bin/bash

# set -x
# 找出,大于 1M的文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local size=${1:-1M}

    find . -size +$size


}


fun "$@"

