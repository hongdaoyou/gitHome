#!/bin/bash
# set -x

# 将中文标点符号,转换成,英文的
function convert_english_symbol() {
    
    local fileName='';
    local file='';
    # echo $1
    local flag=${2};


    # 默认的文件名
    if [ $# -eq 0 ];then
        file="tmp1"
    elif [[ "$1" =~ ^tmp ]];then  # tmp开头的
        file=$1
    else
        fileName=$1;
    fi
    # echo $fileName;


    # 添加前缀
    if [ -z "$fileName" ];then
        fileName=$noteDir/0-wen/0-tmp/"$file";
    fi

    declare -A symbolArr=(
        ['，']=','
        [' ']=' '
        ['。']='.'
        ['‌']=''
        
        ['￼']=''

        ['！']='!'
        ['？']='?'
        ['；']=';'
        ['：']=':'
        
        ['（']='('
        ['）']=')'

        ['“']='"'
        ['”']='"'
        ['　']=' '
        
        # ['']=''

    )

    local reStr;
    # for key in ${symbolArr[@]};do
    for key in "${!symbolArr[@]}";do
        # echo $key
        # echo ${symbolArr[$key]};

        if [ -z "$flag" ];then
            reStr+="s/$key/${symbolArr[$key]}/g; ";
        else
            #  去掉,空格
            if [ -z "${symbolArr[$key]}" ];then
                continue
            fi

            # 只将. 转义
            if [ "${symbolArr[$key]}" = '.' ];then
                symbolArr[$key]="\\${symbolArr[$key]}"
                # echo 'sss';
            fi
            reStr+="s/${symbolArr[$key]}/$key/g; ";
        fi
    done

    # set -x
    sed -i "$reStr" $fileName
    if [ $? -eq 0 ];then
        echo "操作成功";
    else
        echo "操作失败";
    fi
    # cmdStr=$(cat $fileName | sed -n "$reStr")
    # echo $cmdStr
}


convert_english_symbol $@

