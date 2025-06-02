#!/bin/bash

# set -x
# 失败
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,文件名"; exit 1;
    fi

    local fileName=$1

    if [[ "$1" =~ ^[1-9]+$ ]];then  # tmp开头的
        fileName=$noteDir/0-wen/0-tmp/tmp"$1"
    fi

    # local s1=$(cat $fileName)

    s1=$(awk -F ' --> ' '

BEGIN {
    ii=1; # 总共,多少个字段
}
{
    # 清除,最开头的空格
    sub(/^[ \t]+/, "");
    # print NF
    for (i=1; i<=NF;i++) {
        # 下表累加. 统计数组
        ++countArr[$i];
        
        # 保存,原来的数组.  值数组
        valueArr[ii]=$i;
        ii++;

    }
    # 保存,列号
    colNumArr[NR]=NF
    
}
END {
    # for (key in valueArr) {
    #     print key " : " valueArr[key];
    # }
    # print "aa"FS;
    # exit

    j = 1; # 遍历,值数组的 下标
    k = 1; # 需要,添加,索引的 下标

    # for (key in colNumArr) {
    for (i1=1; i1<= NR; i1++) {
        colNum=colNumArr[i1];
        # print colNum

        retStr="";
        if (colNum >= 1) {
            # 以 每一行的 作为开头. 
            kk = sprintf("%d0", k++);
        }
        # print k
        # 遍历,每一列
        for (i=1; i<=colNum; i++) {
            val = valueArr[j++];
            
            # 如果, 出现的个数,大于1
            if (countArr[val] > 1 && index(val, "V_") != 1 ) {
                # retStr= retStr j"["  val  "]";
                retStr= sprintf("%s%s[%s]", retStr, kk++, val);

            } else if (index(val, "[") == 1 ) { # 以 [ 开头的
                retStr= sprintf("%s%s%s", retStr, kk++, val);

            } else {
                # retStr= retStr val;
                retStr= sprintf("%s%s", retStr, val);
            }
            # retStr = retStr FS;
            retStr= sprintf("%s%s", retStr, FS);

        } # end of for

        # 不是,空行
        if (length(retStr) > 0) {
            # retStr=rtrim(retStr, FS);
            # retStr = sub(/FS$/, "", retStr)
            # 正则替换
            sub(FS "$", "", retStr)
            # print "aaaa"
        }
        print(retStr)
    }

}

    ' $fileName)

    echo -e "\n\n$s1" >> $fileName;
    # echo "$s1"

}


fun "$@"

