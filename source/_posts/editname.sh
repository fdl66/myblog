#!/bin/bash
#
#for file in `ls|grep '原'`;
#do
#    filename=`echo $file | cut -d'-' -f2,3,4,5,6,7`
#    mv ${file} ${filename}  
#    echo $file
#    echo $filename
#done

for file in `ls`;
do
    if [ "${file}" != "高校专项计划\.md" ];then
        sed -i 's/]*>//g' ${file} 
    fi 
done 

