#!/bin/bash

# set -x
# 创建,用户
function fun() {
    # if [ $# -lt 2 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    sql="select user,host from mysql.user;"
    mysql_connect_db.sh $sql 

}


fun "$@"

