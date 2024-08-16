#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    # 文件名
    local fileName=$1
    # 大小
    local num=${2:-2048}

    # 生成,私钥
    openssl genrsa -out $fileName $num 2> /dev/null
    if [ $? -eq 0 ];then
        echo "生成,成功";
    else
        echo "生成,失败"; exit 1;
    fi
    echo $fileName

    # 公钥文件名
    local publicName=${fileName%.*}-pub.${fileName##*.}
    echo $publicName
    
    # 生成公钥
    openssl rsa -pubout -in $fileName -out $publicName 2>/dev/null

}


fun "$@"

