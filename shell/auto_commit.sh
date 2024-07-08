#!/bin/bash
# 自动提交

# 默认,提交到 gitHome. 否则,提交到,指定的目录
if [ $# -eq 0 ];then
    cd ~/data/gitHome
else
    cd ${1} 2>/dev/null || (echo "目录,不存在" && exit 1 );
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

# 注释 第2个参数,就是注释
if [ $# -lt 2 ];then
    msg=$(date +"%Y-%m-%d")"-${timeMsg}-add";
else
    msg=$(date +"%Y-%m-%d")"-${2}";
fi


git add .

git commit -m ${msg}

# commit成功后,才提交
if [ $? -eq 0 ];then
    git push
fi

