#!/bin/bash

# set -x
# 设置,系统的全局变量
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local key=$1
    local value=$2

    # set -x
    s1=$(mysql_connect_db.sh "show variables like '%$key%'" | grep -v "Variable_name" )

    echo "$s1";

    if [[ -n "$s1" && -n "$value" ]];then
        local keyName=$(echo "$s1"  | awk 'NR==1 {print $1}')
        # echo $keyName;
        mysql_connect_db.sh "set @@global.${keyName}=${value}"
        if [ $? -eq 0 ]; then
            echo "修改成功";
        else
            echo "修改失败";
        fi
        # mysql_connect_db.sh "select @@global.${keyName}"
    fi

}


fun "$@"

