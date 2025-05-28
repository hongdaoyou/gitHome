#!/bin/bash


function fun() {

    if [ $# -eq 0 ];then
        echo "请输入,容器 "; exit 1;
    fi
    imageName=$1
    sudo docker stop $imageName

}


fun $1 $2

