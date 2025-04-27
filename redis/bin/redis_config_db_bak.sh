#!/bin/bash

# set -x
# 查看,redis 数据库,备份的情况
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    echo  "rdb";
    redis_cli.sh config get save
    redis_cli.sh config get dbfilename

    echo -e "\naof";
    redis_cli.sh config get appendonly
    redis_cli.sh config get appendfilename
    redis_cli.sh config get appendfsync

}


fun "$@"

