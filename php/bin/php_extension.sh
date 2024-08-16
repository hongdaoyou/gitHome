#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=$1
    # php_run.sh "echo json_encode(get_loaded_extensions());"
    
    local s1;
    if [ -n "$name" ];then
        s1=" | grep $name ";
    fi

    s1=$(eval "php -m $s1")
    echo "$s1";
}


fun "$@"

