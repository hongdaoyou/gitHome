#!/bin/bash
# set -x

# 最大的深度
maxDepth=3

# 检查,是否匹配到,特定的路径
function check_match_file() {
    # 匹配到,就不用继续,遍历
    noMatchDir=(
        "/bin/"
        "/sbin/"
        "/usr/"
        "/etc/"
        "/root/"

        "/opt/"
        "/var/"
        "/tmp/"
        "/run/"
        "/lib/"
        "/lib64/"
        "/cdrom/"
        "/sys/"
        "/proc/"
        "/boot/"
        "/snap/"
        "/dev/"
        "/lost+found"
        "/\*"
        /[0-9]+/

        "/下载"
        "/b/"

        "/node_modules/"
        "/dist/"
        "/.git/"
        ".svn/"
        "/.history/"
        "/vendor/"
        "/pkg/"
        "/site-packages/"

        "/pma/"
        "/wordpress/"
    )

    local inputFile=$1

    # local isMatch=0
    # 遍历,是否匹配到
    local file;
    for file in ${noMatchDir[@]};do
        if [[ "$inputFile" =~ "$file"  ]];then
            return 1;
        fi
    done

    return 0;
}

function du_size() {
    
    # 不用,查找大小的路径
    local noDuFileArr=(
        "/proc/"
        "/run/"
        "/[0-9]+/"
        "/lost+found"
        "/\*"

        # 因为,在它之前,已经统计过了
        "/.git/"
        "/node_modules/"
        "/dist/"
        ".svn/"
        "/.history/"
        "/vendor/"
        "/pkg/"
        "/site-packages/"
        "/pma/"
        "/wordpress/"
    )

    local inputFile=$1

    # 如果是目录, 添加/
    # if [ -d "$inputFile" ]; then
    #     inputFile+="/"
    # fi

    # local isMatch=0
    # 遍历,是否匹配到
    local file;
    for file in ${noDuFileArr[@]};do
        if [[ "$inputFile" =~ "$file"  ]];then
            # echo $inputFile ;
            return
        fi
    done
    # sudo du -sh "$inputFile" 
    sudo du -s -k "$inputFile" 

    # return 0
}

# 遍历目录, 找出,各个目录中,大小. 然后,列举出,最大的10个目录
function find_max_file_real() {
    local fileName=$1
    local depth=$2
    
    # 最多,深度,遍历5层
    if [ $depth -gt $maxDepth ];then
        return
    fi

    # 深度加1 
    let depth=depth+1

    local file;

    # 空目录
    if [ -z "$(sudo ls -A "$fileName")" ];then
        return
    fi

    # 遍历目录  如果文件,是目录,那么,继续递归
    for file in "$fileName"*; do
        # echo $file;

        # exit;
        # if
        if [ -d "$file" ]; then
            du_size "$file/"

            # 特定目录,不要进入
            check_match_file "$file/"
            local isMatch=$?
            # echo $file $isMatch
            # exit;
            # echo $isMatch
            if [ $isMatch -eq 1 ] ;then
                continue
            fi

            find_max_file_real "$file/" $depth
        else
            du_size "$file"
        fi
    done

}

# find_max_file_real / 0 
# find_max_file_real / 0 | sort -nr | awk '{ print $1/1024, 'Mb', $2 }' | head -10

function find_max_file() {

    if [ $# -eq 0 ];then
        echo "请输入,要查找的目录"; exit 1;
    fi

    local dirName=$1;

    # if [ $# -eq 0 ];then
    #     dirName="/";
    # fi

    find_max_file_real ${dirName} 0 | sort -nr | awk '{ print $1/1024/1024, "Gb", $2,$3,$4 }' | head -30 > ~/1

    cat ~/1
}

find_max_file $1

# cat 1 | sort -nr | awk '{ print $1/1024, "Mb", $2 }' | head -10
# cat 1 | sort -nr | awk '{ print $1/1024/1024, "Gb", $2,$3,$4 }' | head -30

