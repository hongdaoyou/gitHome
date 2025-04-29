#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local f1=/var/log/message

    if [ ! -f $f1 ];then
        f1=/var/log/syslog
    fi

    tail -f $f1
}


fun "$@"

