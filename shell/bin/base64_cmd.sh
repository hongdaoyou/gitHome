#!/bin/bash


# base64-解析后,存放在,当前文件1
function fun() {
    local s1=$(cat)
    if [ -z "$s1" ];then
        echo "请输入参数"; exit 1;
    fi

    if [ $# -eq 0 ];then
        # echo "编码"
        # base64,编码
        # base64 -w0 $noteDir/0-wen/0-tmp/tmp5 >  1
        echo "$s1" | base64 -w0 

    else
        # echo "解码"
        # 解码
        # base64 -d $noteDir/0-wen/0-tmp/tmp5 >  1
        echo "$s1" | base64 -d
    fi
}
fun "$@"

