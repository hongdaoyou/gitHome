#!/bin/bash


function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=${1:-~/1}

    while read -r a; do
        echo $a

    done < $file

    
}


fun $@

