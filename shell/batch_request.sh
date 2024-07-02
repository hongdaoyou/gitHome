#!/bin/bash

if [ $# -lt 2 ];then
    echo "请输入,url, num" && exit 1
else
    url=$1
    num=$2
fi

# 太大了
if [ $num -gt 101 ];then
    echo "请输入数字,太大了" && exit 1
fi


# url=localhost/a.html
# num=2

# 批处理
for ((i=0; i<$num;i++)) ;do
    # curl -o /dev/null  -s -w "$i %{http_code} - %{time_total}\n" $url  &
    curl -s -k -o /dev/null -w  "$i %{http_code} - %{time_total}\n" $url  &

done

