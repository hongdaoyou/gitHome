#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local key=$1

    # set -x
    redis_cli.sh "keys *${key}*"

}


fun "$@"
