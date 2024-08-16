#!/bin/bash

# set -x
# 获取,用户名
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local user=$1
    local passwd=$2
    
    # local userSql;
    # if [ -n "$user" ];then
    #     userSql="like '%$user%'"
    # fi
    
    mysql_connect_db.sh "select user,host from mysql.user where user like '%$user%' " | grep -v -E "\+|user" 

    if [ -n "$passwd" ]; then
        set -x
        # mysql_connect_db.sh  "update mysql.user set password=password('$passwd') where user='$user' ";
        mysql_connect_db.sh alter user \'$user\'@\'%\' identified by \'$passwd\';

        if [ $? -eq 0 ];then
            echo "密码,更改成功"
        else
            echo "密码,更改失败"
        fi
    fi

}


fun "$@"

