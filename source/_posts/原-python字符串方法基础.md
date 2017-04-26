---
title: '[原]python字符串方法基础'
tags: []
date: 2016-12-20 12:45:17
---

    <span class="hljs-comment">#FIND</span>
    mystr=<span class="hljs-string">'xxxSPAMxxx'</span>
    site=mystr.find(<span class="hljs-string">'SPAM'</span>)
    print(site)

    <span class="hljs-comment">#replace</span>
    mystr=<span class="hljs-string">'xxaaxxaa'</span>
    print(mystr.replace(<span class="hljs-string">'aa'</span>,<span class="hljs-string">'SPAM'</span>))

    <span class="hljs-comment">#in</span>
    mystr=<span class="hljs-string">"xxxspamxxx"</span>
    print(<span class="hljs-string">'spam'</span> <span class="hljs-keyword">in</span> mystr)

    <span class="hljs-comment">#strip</span>
    mystr=<span class="hljs-string">'\t Ni\n'</span>
    print(mystr)
    print(mystr.strip())
    print(mystr.rstrip())
    print(mystr.lstrip())

    <span class="hljs-comment">#lower</span>
    mystr=<span class="hljs-string">'SHRUBBERY'</span>
    print(mystr.lower())

    <span class="hljs-comment">#isalpha</span>
    print(mystr.isalpha())

    <span class="hljs-comment">#isdigit</span>
    print(mystr.isdigit())

    <span class="hljs-comment">#split</span>
    mystr=<span class="hljs-string">'aaa,bbb,ccc'</span>
    print(mystr.split(<span class="hljs-string">','</span>))
    <span class="hljs-comment">#split 默认分隔符为泛空格符</span>
    mystr=<span class="hljs-string">'a b\nc\n d '</span>
    print(mystr.split())

    <span class="hljs-comment">#join</span>
    delim=<span class="hljs-string">'ni'</span>
    print(delim.join([<span class="hljs-string">'aaa'</span>,<span class="hljs-string">'bbb'</span>,<span class="hljs-string">'ccc'</span>]))
    print(<span class="hljs-string">' '</span>.join([<span class="hljs-string">'aaa'</span>,<span class="hljs-string">'bbb'</span>,<span class="hljs-string">'ccc'</span>]))

    <span class="hljs-comment">#list</span>
    chars=list(<span class="hljs-string">'lorreta'</span>)
    print(chars)

    chars.append(<span class="hljs-string">'!'</span>)
    print(<span class="hljs-string">''</span>.join(chars))

    <span class="hljs-comment">#整形和字符串类型转换</span>
    int(<span class="hljs-string">"42"</span>)
    eval(<span class="hljs-string">"42"</span>)

    str(<span class="hljs-number">42</span>)
    repr(<span class="hljs-number">42</span>)

    print(<span class="hljs-string">"%d"</span> %<span class="hljs-number">42</span>)
    print(<span class="hljs-string">'{:d}'</span>.format(<span class="hljs-number">42</span>))

            <div>
                作者：qq_27803491 发表于2016/12/20 12:45:17 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53761679)
            </div>
            <div>
            阅读：34 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53761679#comments)
            </div>