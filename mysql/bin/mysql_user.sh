#!/bin/bash

# set -x
# 获取,用户名
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local user=$1
    
    # local userSql;
    # if [ -n "$user" ];then
    #     userSql="like '%$user%'"
    # fi
    
    mysql_connect_db.sh "select user,host from mysql.user where user like '%$user%' " | grep -v -E "^\+"

}


fun "$@"

