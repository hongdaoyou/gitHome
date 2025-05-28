#!/bin/bash

# 删除,容器
function docker_rm() {
    if [ $# -eq 0 ];then
        echo "请输入,要删除的容器"; exit 1;
    fi
    local name=$1

    # # 删除,全部
    # if [ "$name" = "all" ]; then
    #     arr=$(sudo docker ps -q -a)
    # else
    #     arr=$(sudo docker ps -q -a | grep "$name" | awk  '{print $1}' )
    # fi
    # echo $arr;

    sudo docker stop $name
    
    sudo docker rm ${name}

}


docker_rm $1
