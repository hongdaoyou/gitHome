#!/bin/bash

# set -x
# 通过注释,查找, 哪张表
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local txt="$1"

    mysql -uroot -p123456 -e " SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, COLUMN_COMMENT FROM information_schema.COLUMNS  WHERE COLUMN_NAME LIKE '%$txt%' "
}

fun "$@"

