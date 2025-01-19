#!/bin/bash

# set -x
# 查看,数据库连接,并且,杀死,连接
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local id=$1
    mysql_connect_db.sh "show  processlist";

    if [ -n "$id" ];then
        mysql_connect_db.sh "kill $id ";
        if [ $? -eq 0 ];then
            echo "操作成功"
        else
            echo "操作失败"
        fi
    fi

}


fun "$@"

