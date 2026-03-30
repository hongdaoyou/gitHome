#!/bin/bash

# set -x
# 表中, 哪个字段, 有数据
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local txt=$1
    
    php $gitHome/mysql/bin/table_have_content.php $txt

}

fun "$@"

