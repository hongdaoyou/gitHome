#!/bin/bash
# set -x
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


    # echo $3;
    if [ -z "$3" ]; then
        # echo "11"
        mysql -u ${user} -p${passwd}
    else
        # 执行命令
        # echo "22"
        mysql -u ${user} -p${passwd} -e "$3"
    fi
}

connect_db $1 $2 "$3"

