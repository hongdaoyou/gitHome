
#!/bin/bash

# 查找,最繁忙的进程,正在做什么

if [ ${1} = ""];then
    pid=$(top -bn1 | sed -n '8p' | awk '{print $1}')
    if [ ${pid} -eq $$ ];then  # 不能相等
        echo "not find";
        exit
    fi

else
    pid=${1}
fi

sudo strace -p ${pid}

