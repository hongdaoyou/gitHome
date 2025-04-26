#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s="$@"

    local s1=$(printf "%q\n" "$s")

    # 空格的 转义,去掉
    s1=${s1//\\ / }

    s1=${s1//\\</<}

    s1=${s1//\\>/>}

    echo $s1

}


fun "$@"

