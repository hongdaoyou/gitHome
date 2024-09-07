#!/bin/bash

# set -x
# ollma,下载,大模型
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local model=$1

    # ollama pull qwen:0.5b
    ollama pull $model

}


fun "$@"

