#!/bin/bash
# 自动提交

# 默认,提交到 gitHome. 否则,提交到,指定的目录
if [ $# -eq 0 ];then
    cd ~/data/gitHome
else
    echo "AAA"
    cd ${1} || exit 1;
fi



timeVal=$(date +"%H")

if [ $timeVal -lt 5 ];then
    timeMsg="凌晨"
elif [ $timeVal -lt 12 ];then
    timeMsg="上午"
elif [ $timeVal -lt 19 ];then
    timeMsg="下午"
else
    timeMsg="晚上"
fi

# exit 1;

# 注释
if [ ${1}="" ];then
    msg=$(date +"%Y-%m-%d")"-${timeMsg}-add";
else
    msg=${1}
fi


git add .

git commit -m ${msg}

# commit成功后,才提交
if [ $? -eq 0 ];then
    git push
fi

