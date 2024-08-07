#!/bin/bash


function date_cmd_time.sh() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi
    local cmd=$1

    local t1=$(date +%s.%N)

    $cmd

    local t2=$(date +%s.%N)


    echo -e "\n执行的时间: "$(echo "$t2 - $t1" | bc)" 秒";
}


date_cmd_time.sh $1

