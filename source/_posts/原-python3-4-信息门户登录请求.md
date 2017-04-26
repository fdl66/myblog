---
title: '[原]python3.4 信息门户登录请求'
tags: []
date: 2016-12-20 22:31:02
---

## python  post请求

    import requests
    url = <span class="hljs-string">'http://xx.xxxx.edu.cn/userPasswordValidate.portal'</span>
    user=<span class="hljs-number">20160001</span>
    parms={
        <span class="hljs-string">'Login.Token1'</span>: user,
        <span class="hljs-string">'Login.Token2'</span>: <span class="hljs-string">'123456'</span>,
        <span class="hljs-string">'captchaField'</span>: <span class="hljs-string">'485c'</span>
    }

    headers = {
        <span class="hljs-string">'Connection'</span>:<span class="hljs-string">'keep-alive'</span>,
        <span class="hljs-string">'Content-Length'</span>: <span class="hljs-string">'174'</span>,
        <span class="hljs-string">'Cache-Control'</span>: <span class="hljs-string">'max-age=0'</span>,
        <span class="hljs-string">'Origin'</span>: <span class="hljs-string">'http://xx.xxxx.edu.cn'</span>,
        <span class="hljs-string">'Upgrade-Insecure-Requests'</span>: <span class="hljs-string">'1'</span>,
        <span class="hljs-string">'User-Agent'</span>: <span class="hljs-string">'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'</span>,
        <span class="hljs-string">'Content-Type'</span>: <span class="hljs-string">'application/x-www-form-urlencoded'</span>,
        <span class="hljs-string">'Accept'</span>: <span class="hljs-string">'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8'</span>,
        <span class="hljs-string">'Referer'</span>: <span class="hljs-string">'http://xx.xxxx.edu.cn/'</span>,
        <span class="hljs-string">'Accept-Encoding'</span>: <span class="hljs-string">'gzip, deflate'</span>,
        <span class="hljs-string">'Accept-Language'</span>: <span class="hljs-string">'zh-CN,zh;q=0.8'</span>,
        <span class="hljs-string">'Cookie'</span>: <span class="hljs-string">'JSESSIONID=0000O1UhImqKAdSpqQwJ6Nz9Tow:17kv91lok'</span>
    }

    resp = requests.<span class="hljs-built_in">post</span>(url, data=parms, headers=headers)
    <span class="hljs-keyword">text</span> = resp.<span class="hljs-keyword">text</span>
    print(<span class="hljs-keyword">text</span>)

            <div>
                作者：qq_27803491 发表于2016/12/20 22:31:02 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53770779)
            </div>
            <div>
            阅读：51 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53770779#comments)
            </div>