#!/bin/bash
set -x
# 连接数据库
function connect_db() {
    
    # 默认的,用户名,密码
    local user="root";
    local passwd="123456";

    if [ -n "$1" ];then
        user=$1
    fi
    
    if [ -n "$2" ];then
        passwd=$2
    fi
    mysql -u ${user} -p${passwd}

}

connect_db $1 $2

