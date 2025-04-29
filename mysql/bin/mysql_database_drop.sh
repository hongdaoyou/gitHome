#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local dbName=$1
    # local column=$3

    local sql="drop database $dbName"

    mysql_connect_db.sh "$sql"
    if [ $? -eq 0 ];then
        echo "删除,成功"
    else
        echo "删除,失败"
    fi
}

fun "$@"

