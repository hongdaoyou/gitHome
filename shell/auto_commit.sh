#!/bin/bash

if [ ${1}="" ];then
    msg="add-one";
else
    msg=${1}
fi

# $(git add .)
git add .

git commit -m ${msg}

git push
