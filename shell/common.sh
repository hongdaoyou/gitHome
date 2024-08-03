#!/bin/sh

# 查看文件时, 不用继续深入的目录
noMatchFileDir=(
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

    /*cache*/
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


# 不用,查找大小的路径
noDuFileArr=(
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



# 库文件,不用匹配的路径
noMatchDir=(
    # "awk"
    "node_modules"
    "dist"
    ".git"
    ".svn"
    ".history"
    "vendor"
    "pkg"
    "site-packages"

    "pma"
    "wordpress"
    "*cache*"
)

# 不用拷贝,和查找的目录
excludeDir=(
    "*/.git/*"
    "*/.svn/*"
    "*/data/.history/*"
    "*/node_modules/*"
    "*/vendor/*"
    "*/node_modules/*"
    "*/dist/*"
    "*/pkg/*"
    "*/site-packages/*"
    "*/pma/*"
    "*/wordpress/*"
    "*/Release/*"
    "*/lib/*"
)

# 通用的shell 路径
binPathArr=(
    $gitHome/shell
    $gitHome/shell/bin

    $gitHome/docker/bin

    $gitHome/php/bin

);
