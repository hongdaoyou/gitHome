#!/bin/bash

# set -x
# 查看,状态变量
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local key=$1;

    mysql_connect_db.sh "show status like '%$key%' " | grep -v -E "^\+|Variable_name" 

}


fun "$@"

