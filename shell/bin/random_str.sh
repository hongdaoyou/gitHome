#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local n=${1:-6}

    if [ $n -gt 32 ];then
        echo "最多输出32位"; exit 1
    fi

    echo $RANDOM | md5sum | cut  -b 1-${n}

}


fun "$@"

