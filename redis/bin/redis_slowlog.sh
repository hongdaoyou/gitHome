#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local num=$1

    redis_cli.sh slowlog get $num

}


fun "$@"

