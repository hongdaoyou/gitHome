#!/bin/bash


function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi


}


fun $1

