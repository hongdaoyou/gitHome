#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=$1

    # journalctl -f -u docker.service

    journalctl -f -u $name

}


fun "$@"

