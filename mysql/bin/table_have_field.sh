#!/bin/bash

# set -x
# 给出,字段名,搜索,字段的表名
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # local s=$1
    # DB=$1
    # shift

    # 构建查询条件
    conditions=""
    for field in "$@"; do
        conditions="$conditions COLUMN_NAME = '$field' OR"
    done
    conditions=${conditions% OR}  # 移除最后一个OR

    # QUERY="SELECT TABLE_NAME, GROUP_CONCAT(COLUMN_NAME) AS fields 
    #     FROM INFORMATION_SCHEMA.COLUMNS 
    #     WHERE TABLE_SCHEMA = '$DB' AND ($conditions) 
    #     GROUP BY TABLE_NAME"

    QUERY="SELECT TABLE_NAME, GROUP_CONCAT(COLUMN_NAME) AS fields 
        FROM INFORMATION_SCHEMA.COLUMNS 
        WHERE ($conditions) 
        GROUP BY TABLE_NAME"

    # 使用您的数据库连接信息执行
    mysql -u root -p123456 -e "$QUERY"

}


fun "$@"

