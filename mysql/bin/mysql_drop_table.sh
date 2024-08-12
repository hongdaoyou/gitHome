#!/bin/bash

# 删除,一张表
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local dbName=$1
    local tableName=$2

    # delete table from hdyDb.a1_1
    # 创建一个表 再插入数据
    # sql="delete  from ${dbName}.${tableName}"
    sql="drop table ${dbName}.${tableName}"
    
    # echo  $sql;

    # mysql_connect_db.sh root 123456  "$sql"
    mysql_connect_db.sh  "$sql"
    if [ $? -eq 0 ];then
        echo "删除成功";
    else
        echo "删除失败";
    fi
}

fun $@

