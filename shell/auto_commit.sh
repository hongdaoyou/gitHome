#!/bin/bash
# 自动提交

if [ ${1}="" ];then
    msg=$(date +"%Y-%m-%d")"add";

else
    msg=${1}
fi

git add .  -v

git commit -m ${msg} -v

git push -v
