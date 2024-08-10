#!/bin/bash


function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    while read -r a; do
        echo $a

    done < ~/1

    
}


fun $@

