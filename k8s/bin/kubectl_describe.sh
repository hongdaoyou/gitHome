#!/bin/bash

# set -x
# 查看,某个容器的具体描述
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local podName=$1

	# kubectl describe pod <pod-name>
	kubectl describe pod $podName

}


fun "$@"
