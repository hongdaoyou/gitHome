#!/bin/bash


function json_encode() {
    
    # 简化
    if [ $# -eq 2 ];then
        indentVal=0;
    else
        indentVal=2;
    fi
    # echo $indentVal;

    # 如果是,文件. 就直接操作
    if [ "$1" != "." -o -f "$1" ];then
        local s1=$(jq --indent ${indentVal} "." $1 )

        echo "$s1" > $1
    else
        # echo $1 | jq --indent ${indentVal}  "."
        echo $(cat) | jq --indent ${indentVal}  "."
    fi
}


json_encode $1 $2


