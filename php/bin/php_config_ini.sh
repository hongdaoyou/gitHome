#!/bin/bash

# set -x
# 查看,php的配置
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local key=$1

    a=$(php_run.sh "print_r(ini_get_all()); " | grep "$1" )
    echo $a;
    
    a=$(echo $a | awk '{print $1}' | tr -d '[]')
    # php_run.sh "var_dump(ini_get_all()); " | grep "$1"

    php_run.sh "echo ini_get('$a').PHP_EOL "
}


fun "$@"

