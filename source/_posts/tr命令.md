---
title: tr命令
date: 2017-03-31 21:21:06
tags: [ shell,linux ]
categories: shell
---

## 简介

>通过使用 tr，您可以非常容易地实现 sed 的许多最基本功能。您可以将 tr 看作为 sed 的（极其）简化的变体：它可以用一个字符来替换另一个字符，或者可以完全除去一些字符。您也可以用它来除去重复字符。这就是所有 tr 所能够做的。 

tr用来从标准输入中通过替换或删除操作进行字符转换。tr主要用于删除文件中控制字符或进行字符转换。使用tr时要转换两个字符串：字符串1用于查询，字符串2用于处理各种转换。tr刚执行时，字符串1中的字符被映射到字符串2中的字符，然后转换操作开始。


## 带有最常用选项的tr命令格式为：
tr -c -d -s ["string1_to_translate_from"] ["string2_to_translate_to"]  input-file


### 参数
```
-c 用字符串1中字符集的补集替换此字符集，要求字符集为ASCII。
-d 删除字符串1中所有输入字符。
-s 删除所有重复出现字符序列，只保留第一个；即将重复出现字符串压缩为一个字符串。
input-file是转换文件名。虽然可以使用其他格式输入，但这种格式最常用。
```

### 字符范围
```
指定字符串1或字符串2的内容时，只能使用单字符或字符串范围或列表。
[a-z] a-z内的字符组成的字符串。
[A-Z] A-Z内的字符组成的字符串。
[0-9] 数字串。
\octal 一个三位的八进制数，对应有效的ASCII字符。
[O*n] 表示字符O重复出现指定次数n。因此[O*2]匹配OO的字符串。
tr中特定控制字符的不同表达方式
```
### 速记符含义八进制方式
```
\a Ctrl-G  铃声\007
\b Ctrl-H  退格符\010
\f Ctrl-L  走行换页\014
\n Ctrl-J  新行\012
\r Ctrl-M  回车\015
\t Ctrl-I  tab键\011
\v Ctrl-X  \030
```

## 实例：
1.将文件file中出现的"abc"替换为"xyz"

```
cat file | tr "abc" "xyz" > new_file
```

【注意】这里，凡是在file中出现的"a"字母，都替换成"x"字母，"b"字母替换为"y"字母，"c"字母替换为"z"字母。而不是将字符串"abc"替换为字符串"xyz"。
 
2.使用tr命令“统一”字母大小写

```
（小写 --> 大写）
cat file | tr [a-z] [A-Z] > new_file
（大写 --> 小写）
cat file | tr [A-Z] [a-z] > new_file
```

3.把文件中的数字0-9替换为a-j
```
cat file | tr [0-9] [a-j] > new_file
```
4、删除文件file中出现的"Snail"字符

``` shell
cat file | tr -d "Snail" > new_file

```
 
【注意】这里，凡是在file文件中出现的'S','n','a','i','l'字符都会被删除！而不是紧紧删除出现的"Snail”字符串。
 
5、删除文件file中出现的换行'\n'、制表'\t'字符

``` shell
cat file | tr -d "\n\t" > new_file

```

不可见字符都得用转义字符来表示的，这个都是统一的。


6、删除“连续着的”重复字母，只保留第一个

``` shell
cat file | tr -s [a-zA-Z] > new_file

```


7、删除空行
```shell

cat file | tr -s "\n" > new_file

```

8、删除Windows文件“造成”的'^M'字符

``` shell

cat file | tr -d "\r" > new_file
或者
cat file | tr -s "\r" "\n" > new_file

```
【注意】这里-s后面是两个参数"\r"和"\n"，用后者替换前者

 
9、用空格符\040替换制表符\011

``` 
cat file | tr -s "\011" "\040" > new_file
```


10、把路径变量中的冒号":"，替换成换行符"\n"

```
echo $PATH | tr -s ":" "\n"
```