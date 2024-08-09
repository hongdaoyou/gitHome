#!/bin/bash

# 删除,一张表
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local dbName=$1
    local tableName=$2

    # delete table from hdyDb.a1_1
    sql="delete  from ${dbName}.${tableName}"
    
    # echo  $sql;

    mysql_connect_db.sh root 123456  "$sql"
    if [ $? -eq 0 ];then
        echo "清空成功";
    else
        echo "清空失败";
    fi
}

fun $@

