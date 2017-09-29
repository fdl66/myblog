---
title: '[原]python3.4 信息门户登录请求'
tags: []
date: 2016-12-20 22:31:02
---

## python  post请求

    import requests
    url = 'http://xx.xxxx.edu.cn/userPasswordValidate.portal'
    user=20160001
    parms={
        'Login.Token1': user,
        'Login.Token2': '123456',
        'captchaField': '485c'
    }

    headers = {
        'Connection':'keep-alive',
        'Content-Length': '174',
        'Cache-Control': 'max-age=0',
        'Origin': 'http://xx.xxxx.edu.cn',
        'Upgrade-Insecure-Requests': '1',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Referer': 'http://xx.xxxx.edu.cn/',
        'Accept-Encoding': 'gzip, deflate',
        'Accept-Language': 'zh-CN,zh;q=0.8',
        'Cookie': 'JSESSIONID=0000O1UhImqKAdSpqQwJ6Nz9Tow:17kv91lok'
    }

    resp = requests.post(url, data=parms, headers=headers)
    text = resp.text
    print(text)

            
                作者：qq_27803491 发表于2016/12/20 22:31:02 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53770779)
            
            
            阅读：51 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53770779#comments)
            