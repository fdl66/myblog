---
title: 常用shell
date: 2017-04-03 10:41:27
tags: [ shell,linux ]
categories: shell
---

##查看当前开启的服务
1. 
```shell
ls /etc/rc`runlevel|sed 's/N.//'`.d|awk '!/K/ {print}'|sed 's/S[0-9][0-9]//'
```
2. 
```shell
sudo service --status-all
```