#!/bin/bash

# set -x
# 查看,系统日志
function fun() {

    if [ -f '/var/log/syslog' ];then
        logName='/var/log/syslog'
    elif [ -f '/var/log/messages' ]; then
        logName='/var/log/messages'
    else
        echo "系统的 日志文件,不存在"; 
        exit 1
    fi

    tail -f $logName
}

fun "$@"

