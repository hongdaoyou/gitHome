#!/bin/bash

if [ $# -eq 0 ];then
    echo "请输入,页面的地址"
    exit 1
fi
url=$1

curl -sI $url  | grep "Content-Length" |  awk '{print  $2/1"字节 ", $2/1024"Kb ", $2/1024/1024"Mb " }'


