#!/bin/bash


function docker_kill() {
    if [ $# -eq 0 ];then
        echo "请输入,容器名"; exit 1;
    fi
    local container=$1

    sudo docker kill $container
}


docker_kill $1

