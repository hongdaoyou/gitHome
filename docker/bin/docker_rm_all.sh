#!/bin/bash

# 删除,容器
function docker_rm() {
    # if [ $# -eq 0 ];then
    #     echo "请输入,要删除的容器"; exit 1;
    # fi

    arr=$(sudo docker ps -q -a)

    sudo docker rm ${arr}

}


docker_rm $1
