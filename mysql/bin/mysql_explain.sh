#!/bin/bash

# set -x
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local sql="$@"
    # echo $sql
    # set -x

    # mysql_connect_db.sh root 123456  " explain $sql"
    mysql_connect_db.sh  " explain $sql"
    if [ $? -eq 0 ];then
        echo "执行成功";
    else
        echo "执行失败";
    fi

}


fun "$@"

