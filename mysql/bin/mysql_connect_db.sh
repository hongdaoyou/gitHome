#!/bin/bash
# set -x
# 连接数据库
function connect_db() {
    
    # 默认的,用户名,密码
    local user="root";
    local passwd="123456";
    # local user="hdy";
    # local passwd="123456";

    # if [ $# -eq 2 ]; then
    #     if [ -n "$1" ];then
    #         user=$1
    #     fi
        
    #     if [ -n "$2" ];then
    #         passwd=$2
    #     fi

    # fi

    # echo $3;
    # echo 'aaa'
    # 没有参数
    if [  $# -eq 0 ]; then
        # echo "11"
        mysql -u ${user} -p${passwd} 2>/dev/null
    else
        # 执行命令
        # echo "22"
        # set -x
        mysql -u ${user} -p${passwd} -e "$@" 2>/dev/null
    fi
}

connect_db "$@"

