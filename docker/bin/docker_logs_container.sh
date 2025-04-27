#!/bin/bash


function docker_logs() {
    if [ $# -eq 0 ];then
        echo "请输入,容器名"; exit 1;
    fi
    local container=$1

    sudo docker logs $container
}


docker_logs "$@"

