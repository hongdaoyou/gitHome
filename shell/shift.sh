#!/bin/bash


function fun() {
    if [ $# -eq 0 ];then
        echo "请输入,参数"; exit 1;
    fi

    while [ $# -ne 0 ];do
        echo $1;
        shift
    done

}


fun $@

