#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1
    
    #  查询被锁的事件
    mysql_connect_db.sh 'select trx_mysql_thread_id from information_schema.innodb_trx'
        #  kill 掉对应 trx_mysql_thread_id
        # kill 1925

    mysql_connect_db.sh 'show full processlist'

}


fun "$@"

