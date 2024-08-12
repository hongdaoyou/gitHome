#!/bin/bash


function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # 查看,当前的慢日志
    mysql_connect_db.sh "show variables like '%slow_query_log%'"

    if [ $# -eq 1 ];then
        # 设置
        local arr=(
            'set global slow_query_log = 1;'
            'set global long_query_time = 0.000001;'
        )
        set -x
        mysql_connect_db.sh "${arr[*]}"

        set +x
    fi

}


fun $@

