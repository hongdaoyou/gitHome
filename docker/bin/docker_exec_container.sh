#!/bin/bash


function fun() {

    if [ $# -eq 0 ];then
        echo "请输入,容器 "; exit 1;
    fi

    # local containerName=$1
    local  imageName=$1
    local  cmd=${2:-bash}

    sudo docker exec -it $imageName $cmd

}


fun $1 $2

