#!/bin/bash

# set -x
# 创建,随机文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local fileName=$1
    local num=${2:-3}

    for (( i=0; i<num; i++ )) {
        echo $RANDOM >> ${fileName}-$i
    }

}


fun "$@"

