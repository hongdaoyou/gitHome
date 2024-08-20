#!/bin/bash

# set -x
# 创建,用户
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local user=$1
    local passwd=$2


    mysql_connect_db.sh "create user \`$user\`@\`%\` identified by '$passwd' "
    if [ $? -eq 0 ];then
        echo "创建,成功";
    else
        echo "创建,失败";
    fi
    mysql_connect_db.sh "grant all  on *.* to \`$user\`@\`%\`"  ;

}


fun "$@"
