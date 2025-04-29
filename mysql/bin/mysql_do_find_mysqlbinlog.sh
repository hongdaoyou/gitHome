#!/bin/bash

# set -x
# 查看,mysql具体做了什么
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local cmd=$1;
    local start=$2;
    local end=$3;

    local db=$4;

    local db_opt='';
    if [ -n $db ];then
        db_opt=" -d $db "
    fi

    # 查看,最近的一个二进制日志的位置
    # mysql_connect_db.sh SHOW BINARY LOGS | grep -v -E '\+|Log_name' | sort -r
    local logName=$(mysql_connect_db.sh SHOW BINARY LOGS | grep -v -E '\+|Log_name' | sort -r | awk 'NR==1 {print $1}' )

    set -x
    # mysqlbinlog --start-datetime="$start 00:00:00" --stop-datetime="$end 00:00:00" -d ${dbName} ${logName} | grep $cmd
    sudo mysqlbinlog $db_opt --start-datetime="$start 00:00:00" --stop-datetime="$end 00:00:00"  /var/lib/mysql/${logName} | grep -i $cmd

}


fun "$@"

