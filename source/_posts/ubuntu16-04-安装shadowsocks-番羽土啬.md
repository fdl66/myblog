---
title: '[原]ubuntu16.04 安装shadowsocks,番羽土啬'
tags: []
date: 2017-02-27 20:11:34
---

## 安装步骤

1.  安装shadowsocks-qt5

[统一安装教程](https://github.com/shadowsocks/shadowsocks-qt5/wiki/%E5%AE%89%E8%A3%85%E6%8C%87%E5%8D%97)
        ubuntu16.04安装,执行如下命令:

    sudo add-apt-repository ppa:hzwhuang/ss-qt5
    sudo apt-get update
    sudo apt-get install shadowsocks-qt5`
    `完成之后,在图形界面下找到shadowsocks-qt5的图标启动,或者命令行运行:/usr/bin/ss-qt5
    然后配置ss,connection--&gt;add--&gt;manually--&gt;填写相关参数
    `
2.  配置chrome浏览器
    下载chrome插件:[SwitchyOmega2.3.21下载地址](https://github.com/FelisCatus/SwitchyOmega/releases/download/v2.3.21/SwitchyOmega.crx)   ////分隔符/////     [SwitchyOmega最新版网址](https://github.com/FelisCatus/SwitchyOmega/releases/)    安装该插件(不会安装,百度crx插件安装办法)    然后配置该插件,参考:

        1.  设置代理地址    安装好插件会自动跳到设置选项，有提示你可以跳过。左边新建情景模式-选择代理服务器-比如命名为SS（叫什么无所谓）其他默认之后创建，之后在代理协议选择SOCKS5，地址为127.0.0.1,端口默认1080 。然后保存即应用选项。![1](https://aitanlu.com/wp-content/uploads/2016/04/shadowsocks-0.png)![2](https://aitanlu.com/wp-content/uploads/2016/04/shadowsocks-1.png)
    2.  设置自动切换    接着点击自动切换 ( Auto switch）上面的不用管，在按照规则列表匹配请求后面选择刚才新建的SS，默认情景模式选择直接连接。点击应用选项保存。再往下规则列表设置选择AutoProxy 然后将这个地址填进去，点击下面的立即更新情景模式，会有提示更新成功！![3](https://aitanlu.com/wp-content/uploads/2016/04/shadowsocks-2.png) 图片中7填写的是:    `    https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt    `
            1.  然后就可以成功打开 google.com 了![这里写图片描述](http://img.blog.csdn.net/20170227200806973?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjc4MDM0OTE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)
3.  开机启动
    运行:
    `gnome-session-properties

打开这个,然后添加
    ![4](http://www.afox.cc/wp-content/uploads/2015/07/2015-07-11-171133%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
    如下填写后保存退出即可!
    ![5](http://www.afox.cc/wp-content/uploads/2015/07/2015-07-11-171220%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)

## 参考教程

1.  [ubuntu16.04下载安装shadowsocks+配置chrome的过程记录](http://www.jianshu.com/p/9b7725d50f4c)
2.  [linux-ubuntu使用shadowsocks客户端配置](https://aitanlu.com/ubuntu-shadowsocks-ke-hu-duan-pei-zhi.html)
3.  [ubuntu 使用图形化配置 shadowsocks -qt5 开机自动启动（配置开机启动）](http://www.afox.cc/archives/83)
            
                作者：qq_27803491 发表于2017/2/27 20:11:34 [原文链接](http://blog.csdn.net/qq_27803491/article/details/58233565)
            
            
            阅读：20 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/58233565#comments)
            
