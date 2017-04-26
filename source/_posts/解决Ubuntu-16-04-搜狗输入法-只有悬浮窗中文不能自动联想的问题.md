---
title: 解决Ubuntu 16.04 搜狗输入法 只有悬浮窗中文不能自动联想的问题
date: 2017-03-30 13:29:59
tags: 小问题
categories: Ubuntu使用
---

一直用得好好的，不知道下载了什么更新导致搜狗输入法，在输入中文的时候，只显示一个悬浮窗。打字的时候什么反应都没有。中文也联想不出来。

找了半天，重新安装fcitx/搜狗输入法N次无果，在网上论坛找到了答案，修复了这个问题，记录一下。

直接删除其配置文件：
```
rm -rf ~/.config/SogouPY* ~/.config/sogou*
```
然后直接在右上角点fcitx图标，下拉列表里面重启fcitx输入法


[转载自](https://fiture.me/share/linux-ubuntu/1246.html)
