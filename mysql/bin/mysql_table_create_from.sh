#!/bin/bash

# 复制,一张表
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    # local dbName=$1
    # local tableName=$2

    # local newTableName=$3

    local t1=$1
    local t2=$2

    # 没有,键
    # create table a1111  select * from a1

    # CREATE TABLE hdyDb.a1_1 LIKE hdyDb.a1;
    # INSERT INTO hdyDb.a1_1 SELECT * FROM hdyDb.a1;

    # 创建一个表 再插入数据
    # sql="CREATE TABLE ${dbName}.${newTableName} LIKE ${dbName}.${tableName}; INSERT INTO ${dbName}.${newTableName} SELECT * FROM ${dbName}.${tableName};"

    sql="CREATE TABLE $t1 LIKE $t2; INSERT INTO $t1 SELECT * FROM $t2;"


    # mysql_connect_db.sh root 123456 "$sql"
    mysql_connect_db.sh "$sql"
    if [ $? -eq 0 ];then
        echo "创建成功";
    else
        echo "创建失败";
    fi
        
}

fun $@

