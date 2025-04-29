#!/bin/bash

# 创建,测试数据库
function fun() {
    # if [ $# -lt 2 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local dbName=${1:-test}

    local sqlArr=(
"create database $dbName;"

"create table ${dbName}.a1(id int primary key  auto_increment, name varchar(30), phone varchar(30), age int, index(name) );"

"insert into ${dbName}.a1(name, phone,age) values('h1', "1111", 11);"
"insert into ${dbName}.a1(name, phone,age) values('h2', "2222", 22);"
"insert into ${dbName}.a1(name, phone,age) values('h2', "2222", 22);"
"insert into ${dbName}.a1(name, phone,age) values('h3', "3333", 33);"

"create table ${dbName}.a2 like ${dbName}.a1;  insert into ${dbName}.a2  select * from ${dbName}.a1;"

"create table ${dbName}.a3 like ${dbName}.a1;  insert into ${dbName}.a3  select * from ${dbName}.a1;"

)
    set -x
    mysql_connect_db.sh   "${sqlArr[*]}"
    if [ $? -eq 0 ];then
        echo "创建成功";
    else
        echo "创建失败";
    fi
}

fun $@

