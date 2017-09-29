---
title: shell知识遗漏1
date: 2017-05-16 19:18:23
tags: [ shell,linux ]
categories: [ shell ]
---

## 数组和关联数组
Bash从4.0版本之后才开始支持关联数组。
(1) 定义数组的方法有很多种。可以在单行中使用一列值来定义一个数组:

``` shell

array_var=(1 2 3 4 5 6)
#这些值将会存储在以0为起始索引的连续位置上

```

另外,还可以将数组定义成一组“索引 - 值”:

``` shell
array_var[0]="test1"
array_var[1]="test2"
array_var[2]="test3"
array_var[3]="test4"
array_var[4]="test5"
array_var[5]="test6"

```

(2) 打印出特定索引的数组元素内容:

``` shell
echo ${array_var[0]}
test1
index=5
echo ${array_var[$index]}
test6

```

(3) 以清单形式打印出数组中的所有值:

``` shell
$ echo ${array_var[*]}
test1 test2 test3 test4 test5 test6
也可以这样使用:
$ echo ${array_var[@]}
test1 test2 test3 test4 test5 test6

```

(4) 打印数组长度(即数组中元素的个数):

``` shell
$ echo ${#array_var[*]}
6

```
<!--more-->

## 数组plus

1).定义关联数组
在关联数组中,我们可以用任意的文本作为数组索引。首先,需要使用声明语句将一个变量
名声明为关联数组。像下面这样:
```
$ declare -A ass_array
```
声明之后,可以用两种方法将元素添加到关联数组中。
利用内嵌“索引 - 值”列表的方法,提供一个“索引 - 值”列表:
```
$ ass_array=([index1]=val1 [index2]=val2)
```
使用独立的“索引 - 值”进行赋值:
```
$ ass_array[index1]=val1
$ ass_array'index2]=val2

```
举个例子,试想如何用关联数组为水果制定价格:
```
$ declare -A fruits_value
$ fruits_value=([apple]='100dollars' [orange]='150 dollars')
```
用下面的方法显示数组内容:
```
$ echo "Apple costs ${fruits_value[apple]}"
Apple costs 100 dollars

```

2).列出数组索引
每一个数组元素都有一个索引用于查找。普通数组和关联数组具有不同的索引类型。我们可
以用下面的方法获取数组的索引列表:
```
$ echo ${!array_var[*]}
也可以使用:
$ echo ${!array_var[@]
```
以先前提到的 fruits_value 数组为例,运行如下命令:
```
$ echo ${!fruits_value[*]}
orange apple
对于普通数组,这个方法同样可行。
```

## 调试脚本

## 函数和参数
 `$1` 是第一个参数。

 `$2` 是第二个参数。
 `$n` 是第n个参数。

 `"$@"` 被扩展成 `"$1" "$2" "$3"` 等。

 `"$*"` 被扩展成 `"$1c$2c$3"` ,其中 c 是IFS的第一个字符。

 `"$@"` 要比 `"$*"` 用得多。由于 `"$*"` 将所有的参数当做单个字符串,因此它很少被使用。
 `$?`  上一条命令执行的返回值
 
 `$#` 参数个数 
 
## 字段分隔符和迭代器

```shell 

#!/bin/bash
#用途: 演示IFS的用法
line="root:x:0:0:root:/root:/bin/bash"
oldIFS=$IFS;
IFS=":"
count=0
for item in $line;
do
	[ $count -eq 0 ] && user=$item;
	[ $count -eq 6 ] && shell=$item;
	let count++
done;
IFS=$oldIFS
echo $user\'s shell is $shell;

输出为:
root's shell is /bin/bash
```

## 循环

### for 循环
```
for var in list;
do
	commands; #使用变量$var
done
```
list 可以是一个字符串,也可以是一个序列。
我们可以轻松地生成不同的序列。
echo {1..50} 能够生成一个从1~50的数字列表。 echo {a..z} 或 {A..Z} 或 {a..h} 可以生

成字母列表。同样,我们可以将这些方法结合起来对数据进行拼接(concatenate)
。下面的
代码中,变量 i 在每次迭代的过程里都会保存一个字符,范围从 `a ~ z :`

```

for i in {a..z}; do actions; done;
```

for 循环也可以采用C语言中 for 循环的格式。例如:
```
for((i=0;i<10;i++))
{
	commands; #使用变量$i
}
```

### while 循环
```
while condition
do
	commands;
done

```
用 true 作为循环条件能够产生无限循环。

### until 循环
在Bash中还可以使用一个特殊的循环 until 。它会一直执行循环,直到给定的条件为真。
例如:


```

x=0;
until [ $x -eq 9 ]; #条件是[$x -eq 9 ]
do
	let x++; echo $x;
done
```


