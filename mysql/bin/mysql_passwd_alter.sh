#!/bin/bash

# set -x
# 获取,用户名
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,用户名, 主机, 密码"; exit 1;
    fi
    local user=$1
    local host=$2
    local passwd=$3
    
    # local userSql;
    # if [ -n "$user" ];then
    #     userSql="like '%$user%'"
    # fi
    
    mysql_connect_db.sh "select user,host from mysql.user where user like '$user'@'$host' " | grep -v -E "\+|user" 

    if [ -n "$passwd" ]; then
        # set -x
        # mysql_connect_db.sh  "update mysql.user set password=password('$passwd') where user='$user' ";

        sql="alter user '$user'@'$host' identified by '$passwd';"
        # echo $sql
        mysql_connect_db.sh $sql

        if [ $? -eq 0 ];then
            echo "密码,更改成功"
        else
            echo "密码,更改失败"
        fi
    else
        echo "密码,未输入";
    fi

}


fun "$@"

