#!/bin/bash

# set -x
# 查看,系统日志
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s=$1

    if [ -f '/var/log/syslog' ];then
        logName='/var/log/syslog'
    elif [ -f '/var/log/messages' ]; then
        logName='/var/log/messages'
    else
        echo "系统的 日志文件,不存在";
    fi

    grep -i $s $logName
}

fun "$@"

