#!/bin/bash

# set -x
# 导出数据库的数据
function mysqldump_db() {
    # if [ $# -eq 0 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local dbUser='root'
    local dbPasswd='123456'

    #数据库连接
    mysqlConnSql="mysql -u $dbUser -p$dbPasswd "
    
    #忽视,哪些数据库
    ignoreDb="grep -Ev Database|information_schema|mysql|performance_schema "
    
    #显示所有数据库
    # showDbSql="$mysqlConnSql -e 'show databases' "
    showDbSql="$mysqlConnSql  "

    #导出数据库
    mysqldumpSql=" mysqldump -u$dbUser -p$dbPasswd -B "
    
    
    dbBackFile=${dbBackDir}`date +"%Y%m%d-%H%M%S"`.sql.gz
    
    # $showDbSql | ${ignoreDb} | xargs ${mysqldumpSql} | gzip > ${dbBackFile}
    $showDbSql -e 'show databases' | ${ignoreDb} | xargs ${mysqldumpSql} | gzip > ${dbBackFile}

    echo "导出的数据库名: $dbBackFile";
}

mysqldump_db

