#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local db=$1
    local table=$2
    # local column=$3

    if [ $# -eq 0 ];then
        sql="show databases";
    elif [ $# -eq 1 ];then
        sql="show tables from $db"
    
    elif [ $# -eq 2 ];then
        sql="show columns from $db.$table"
    
    fi

    mysql_connect_db.sh "$sql" | grep -v -E "^\+|Database|Tables|Columns"
}


fun "$@"

