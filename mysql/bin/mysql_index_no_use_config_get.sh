#!/bin/bash

# set -x
# 没有,使用索引的 语句, 列出来
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # local sql="$@"
    # echo $sql
    # set -x
    # mysql_connect_db.sh  " show variables like '%log_queries_not_using_indexes|slow_query_log_file|slow_query_log|long_query_time%' "
    
    show variables WHERE Variable_name REGEXP 'log_queries_not_using_indexes|slow_query_log_file|slow_query_log|long_query_time';

    if [ $? -eq 0 ];then
        echo "执行成功";
    else
        echo "执行失败";
    fi

}


fun "$@"

