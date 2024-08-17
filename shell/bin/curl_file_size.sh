#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    url=$1

    curl -sI $url  | grep -i "^Content-Length" |  awk '{printf "%d 字节  %.2f Kb  %.2f Mb\n",$2/1, $2/1024, $2/1024/1024 }'

}


fun "$@"

