#!/bin/bash

# set -x
# 更改,root密码
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,mysql root  密码"; exit 1;
    fi
    local passwd=$1
    
    # local userSql;
    # if [ -n "$user" ];then
    #     userSql="like '%$user%'"
    # fi

    sql="alter user 'root'@'localhost' identified WITH 'mysql_native_password' by '$passwd';"
    # echo $sql
    mysql_connect_db.sh $sql

    if [ $? -eq 0 ];then
        echo "密码,更改成功"
    else
        echo "密码,更改失败"
    fi

}


fun "$@"

