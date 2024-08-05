#!/bin/bash


function fun() {

    if [ $# -eq 0 ];then
        echo "请输入,参数(容器, 镜像) "; exit 1;
    fi

    local containerName=$1
    local  imageName=$2
    
    # 如果是,1个参数. 那么,是容器. 如果是2个参数. 那么,就是,从镜像中, 开始,新的容器
    if [ $# -eq 2 ];then
        echo "正在,创建,容器";
        sudo docker run -it --name $containerName  $imageName
    else
        echo ;
        # 检查,容器,是否存活. 如果是,就进入. 否则,开启,这个容器
        # if [ ]; then
        #     sudo docker attach busybox-ps1
        # else
        #     sudo docker start busybox-ps1
        # fi
    fi

}


fun $1 $2

