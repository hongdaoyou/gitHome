#!/bin/bash

# set -x
# 恢复,删除的文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=$1

    git restore --cached  $file


}


fun "$@"

