#!/bin/bash


function fun() {
    
    # 简化
    if [ $# -eq 2 ];then
        indentVal=0;
    else
        indentVal=2;
    fi
    # echo $indentVal;
    # echo $1;
    # 如果是,文件. 就直接操作
    if [ "$1" != "." ];then
        # if [ ! -f "$1" ];then
        #     fileName=~/test/0-tmp/$1
        # else
        #     fileName=$1
        # fi
        fileName=~/test/0-tmp/$1

        echo $fileName;
        local s1=$(jq --indent ${indentVal} "." $fileName )

        # local s1=$(jq --indent ${indentVal} "." $1 )

        # echo $s1;
        echo "$s1" > $fileName
    else
        # echo $1 | jq --indent ${indentVal}  "."
        echo $(cat) | jq --indent ${indentVal}  "."
    fi
}

fun "$*"
