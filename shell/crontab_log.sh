#!/bin/bash

# set -x
# 列出, cron的 日志
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1
    local logName=''; # 日志文件

    if [ -f '/var/log/syslog' ];then
        logName='/var/log/syslog'
    elif [ -f '/var/log/messages' ]; then
        logName='/var/log/messages'
    else
        echo "系统的 日志文件,不存在";
    fi

    grep CRON $logName
}

fun "$@"

