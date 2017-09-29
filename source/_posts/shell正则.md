---
title: shell正则
date: 2017-05-05 20:49:05
tags: [shell,linux]
categories: shell 
---

## 字符
1.特定字符

```
'a'
```

2.范围内字符 

```
[]单个字符
数字字符:[0-9],[259]
小写字母:[a-z]
大写字母:[A-Z]
符号:[,;:]
取反:[^0-9]
```

3.任意字符

```
.:单个任意字符(注意:[.]和\.  , 这里就只表示点)
```

## 其他符号

1.边界字符:头尾字符

```
^: ^root 表示以root开头的行
$: false$ 表示以false结束的行

空行的表示: ^$

```

2.元字符(代表普通字符或者特殊字符)

```

\w: 匹配任何字类字符,包括下划线([A-Za-z0-9_])
\W: 匹配任何非字类字符([^A-Za-z0-9_])
\b: 单词的分隔(不只是空格或者制表符)
dear@dear3442:~/code/sh$ egrep '\b[0-9]+\b' passwd 
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin

```
## 字符串
1. `'asdf'` ,`'asdf'`
2. `[0-9][0-9][0-9]`,`[a-z][a-z][a-z]`
3. 重复,逻辑
	
	重复:
		1. *:零次或者多次 匹配前面的字符或子表达式
		2. \+:一次或者多次 匹配前面的字符或子表达式(注意grep使用的时候,要用 \+ )
		3. \?:零次或者一次 匹配前面的字符或子表达式(注意grep使用的时候,要用 \? )
		4. \{n,m\}: 重复n次到m次
	分组:
		$ grep '\(se\)*' test.txt #表示匹配se多次
	任意字符串:
		$ grep '.*' test.txt #可能会贪婪匹配
		
	逻辑:
		1. 逻辑或: | : '/bin/\(false\|true\)'
		
		
## 案例

1. 4-10位的QQ号

```shell
grep '^[0-9]\{4-10\}$' qq.txt
```
2.匹配密码(有数字,26个字母和下划线组成)

```
grep '^\w\+$' qq.txt
```

## 总结
![](http://function.dearamaze.com/shell%E6%AD%A3%E5%88%99%E6%80%BB%E7%BB%93.png)




















		
