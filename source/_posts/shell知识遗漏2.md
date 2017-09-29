---
title: shell知识遗漏2
tags: [shell]
categories: [shell]
date: 2017-06-09 10:48:47
---
## 比较与测试
1. if条件
2. else if 和 else

<!--more-->

```shell
#!/bin/bash
read i
if [ $i -gt 10 ];then
    echo "i>=10"
elif [ $i -le 10 ]&&[ $i -gt 0 ];then
    echo "0<i<=10"
else
    echo "i<=0"
fi


```
3.小技巧
>if 和 else 语句可以进行嵌套。 if 的条件判断部分可能会变得很长,
但可以用逻辑运算符将它变得简洁一些:

``` 
[ condition ] && action; # 如果 condition 为真,则执行 action ;
[ condition ] || action; # 如果 condition 为假,则执行 action 。

&& 是逻辑与运算符, || 是逻辑或运算符。编写Bash脚本时,这是一
个很有用的技巧。现在来了解一下条件和比较操作。
```
4.比较运算符

算数运算符:
```
-gt :大于。
-lt :小于。
-ge :大于或等于。
-le :小于或等于。
```
文件系统相关测试:

``` shell
我们可以使用不同的条件标志测试不同的文件系统相关的属性。
[ -f $file_var ] :如果给定的变量包含正常的文件路径或文件名,则返回真。(判断给定的文件,是否存在!只能判断文件!)
[ -x $var ] :如果给定的变量包含的文件可执行,则返回真。
[ -d $var ] :如果给定的变量包含的是目录,则返回真。
[ -e $var ] :如果给定的变量包含的文件(文件文件夹都可以)存在,则返回真。
[ -c $var ] :如果给定的变量包含的是一个字符设备文件的路径,则返回真。
[ -b $var ] :如果给定的变量包含的是一个块设备文件的路径,则返回真。
[ -w $var ] :如果给定的变量包含的文件可写,则返回真。
[ -r $var ] :如果给定的变量包含的文件可读,则返回真。
[ -L $var ] :如果给定的变量包含的是一个符号链接,则返回真。
使用方法如下:
fpath="/etc/passwd"
if [ -e $fpath ]; then
	echo File exists;
else
	echo Does not exist;
fi

```
字符串比较:

```
使用字符串比较时,最好用双中括号,因为有时候采用单个中括号会产生错误,所以最
好避开它们。
可以用下面的方法检查两个字符串,看看它们是否相同。
[[ $str1 = $str2 ]] :当 str1 等于 str2 时,返回真。也就是说, str1 和 str2 包含的文本是一模一样的。
[[ $str1 == $str2 ]] :这是检查字符串是否相等的另一种写法。
也可以检查两个字符串是否不同。

[[ $str1 != $str2 ]] :如果 str1 和 str2 不相同,则返回真。
我们还可以检查字符串的字母序情况,具体如下所示。
[[ $str1 > $str2 ]] :如果 str1 的字母序比 str2 大,则返回真。
[[ $str1 < $str2 ]] :如果 str1 的字母序比 str2 小,则返回真。
[[ -z $str1 ]] :如果 str1 包含的是空字符串,则返回真。
[[ -n $str1 ]] :如果 str1 包含的是非空字符串,则返回真。

注意在 = 前后各有一个空格。如果忘记加空格,那就不是比较关系了,而变成了赋值语句。

```
多条件组合
```
使用逻辑运算符 && 和 || 能够很容易地将多个条件组合起来:
if [[ -n $str1 ]] && [[ -z $str2 ]] ;
then
	commands;
fi
例如:
str1="Not empty "
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]];
then
	echo str1 is nonempty and str2 is empty string.
fi

输出如下:
str1 is nonempty and str2 is empty string.

```
test命令

``` SHELL
test 命令可以用来执行条件检测。用 test 可以避免使用过多的括号。之前讲过的 [] 中的测试条件同样可以用于 test 命令。
例如:
if  [ $var -eq 0 ]; then echo "True"; fi
也可以写成:
if  test $var -eq 0 ; then echo "True"; fi
```

## 录制并回放终端回话
暂且跳过,用的不多


## 
