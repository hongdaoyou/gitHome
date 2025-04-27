#!/bin/bash

# set -x
# 获取,时间
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local format=$1
    local s1;
    
    # 默认的格式
    local defaultFormat="%Y-%m-%d %H:%M:%S"
        
    if [[ "$format" =~ ^[0-9]+$ ]];then
        s1="-d $format"
    else
        defaultFormat="$format"
    fi
    # date +"%Y-%m-%d %H:%M:%S"
    # set -x
    date $s1  +"$defaultFormat"
}


fun "$@"

