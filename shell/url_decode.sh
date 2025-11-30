#!/bin/bash

# set -x
# 将url,编码. 转换成, 字符
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local encoded=$1

    # encoded="334%EF%BC%89%E4%B9%8B,adb"

    decoded=$(echo -e "$(echo $encoded | sed 's/%/\\x/g')")
    echo "$decoded"

    # decoded=$(perl -MURI::Escape -e 'print uri_unescape($ARGV[0])' "$encoded")


}

fun "$@"

