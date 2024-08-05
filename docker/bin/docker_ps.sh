#!/bin/bash

# 查看,容器
function docker_ps() {
    local container=$1

    if [ -z $container ]; then
        # 查看,当前运行的
        sudo docker ps

    elif [ "$container" = "all" ]; then
        #  查看,所有的容器
        sudo docker ps -a

    else
        sudo docker ps -a | grep $container
    fi
}

docker_ps $1


