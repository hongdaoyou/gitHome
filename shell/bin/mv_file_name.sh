#!/bin/bash
source common.sh


function mv_file_name() {

    if [ $# -eq 0 ]; then
        echo "请输出参数";exit 1;
    elif [ $# -eq 1 ]; then
        # 将没有,后缀名的. 修改为了
        local dst=$1

        for file in *;do
            # echo $file;
            if [[ -f "$file" &&  ! "$file" =~ \.  ]]; then
                mv $file $file.$dst
                # echo $file;
            fi
        
        done
    else
        local src=$1
        local dst=$2

        # echo $src $dst
        # exit;
        for file in *.${src};do
            # 删除,最后的扩展名. 然后,再添加,扩展名
            # echo ${src};
            # echo  ${file%.*}.${dst};
            mv $file ${file%.*}.${dst}
        done

    fi

}


mv_file_name $1 $2

