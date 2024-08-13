#!/bin/bash

# set -x
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    source common.sh

    local -A demoFileArr2;
    # declare -A demoFileArr2;

    # 拷贝
    for key in "${!demoFileArr[@]}";do
        demoFileArr2[$key]="${demoFileArr[$key]}";
        # echo "${demoFileArr2[$key]}"
    done

    # 遍历,打印
    for key in "${!demoFileArr2[@]}";do
        echo "$key  ${demoFileArr2[$key]} "
    done
}


fun "$@"

