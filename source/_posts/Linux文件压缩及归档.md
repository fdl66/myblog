---
title: '[原]Linux文件压缩及归档'
tags: []
date: 2016-11-19 17:17:50
---

# 压缩  解压缩命令

## 压缩格式:

    gz,bz2,xz,zip,
    压缩算法不同,压缩比也会不同;
    `

    ## 压缩命令

    `*不支持压缩目录*
    `

    ### 早期:compress:FILENAME.Z

    `    umcompress
    `

    ### gzip: .gz

    `    gzip /PATH/TO/SOURCEFILE 压缩完成后会删除原文件
            -d:解压
            -#:(1-9)指定压缩比,默认为6;

        gunzip:
            gunzip /PATH/TO/SOMEFILE.gz :解压完成后会删除原文件
            zcat /PATH/TO/SOMEFILE.gz 表示在不解压的情况下,查看文本文件的内容
    `

    ### bzip2: .bz2

    `    比gzip有着更强大的压缩比的压缩工具,使用格式类似
        -d:
        -#:(1-9)
        -k:压缩时保留原文件

        bunzip2:解压

        bzcat:同zcat
    `

    ### xz: .xz

    `    压缩比更大,用法同bzip2

        unxz:解压
        xzdec,解压.xz压缩文件,
        xzcat:
    `

    ### zip:(压缩比较小)(归档而且压缩)

    `    $:zip FILENAME.zip file1 file2 ... : 压缩,且不删除原文件
        unzip:
            unzip FILENAME.zip
    `

    ## archive:归档,归档本身并不意味着压缩

    ### tar:(归档工具)

    `    -c :创建归档文件
        -f FILE.tar : 操作的归档文件
        -x :展开归档
        --xattrs:归档时保留其扩展属性信息
        $:tar -cf FILE.tar file1 file2 ... (归档命令)
        $:tar -xf FILE.tar (展开归档命令)
        $:tar -tf FILE.tar (不展开文件,查看归档了哪些文件)
        -zcf:归档并调用gzip压缩
        -zxf:调用gzip解压并展开压缩文件(解压时,z选项可省略,下面的解压,j,J都可省略)

        -jcf:调用bzip2
        -jxf:

        -Jcf:调用xz
        -Jxf:
    `

    ### cpio:归档工具

    ## 补充

    ### read命令

    `read:
        后面加上要输入的变量名
        -p:打印内容,并输入
            $:read -p "打印的内容" a b ...
    `

    ### echo

    `echo:
        -n:不换行
    `

    ### 压缩文件的小脚本

    `#!/bin/bash
    
    read -p "Please input files' name,which you want to compress:" FILENAME
    read -p "Please input Destination:" DEST 
    read -p "Please input the compress type :" TYPE 

    case $TYPE in 
    gzip)
        tar -zcf ${DEST}.tar.gz ${FILENAME} 
        ;;
    bzip2)
        tar -jcf ${DEST}.tar.bz2 ${FILENAME}
        ;;
    xz)
        tar -Jcf ${DEST}.tar.xz ${FILENAME} 
        ;;
    *)
        echo "Unknown TYPE!"
        exit 9
        ;;
    esac

            
                作者：qq_27803491 发表于2016/11/19 17:17:50 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53232202)
            
            
            阅读：132 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53232202#comments)
            