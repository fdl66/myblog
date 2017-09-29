---
title: '[原]python字符串方法基础'
tags: []
date: 2016-12-20 12:45:17
---

    #FIND
    mystr='xxxSPAMxxx'
    site=mystr.find('SPAM')
    print(site)

    #replace
    mystr='xxaaxxaa'
    print(mystr.replace('aa','SPAM'))

    #in
    mystr="xxxspamxxx"
    print('spam' in mystr)

    #strip
    mystr='\t Ni\n'
    print(mystr)
    print(mystr.strip())
    print(mystr.rstrip())
    print(mystr.lstrip())

    #lower
    mystr='SHRUBBERY'
    print(mystr.lower())

    #isalpha
    print(mystr.isalpha())

    #isdigit
    print(mystr.isdigit())

    #split
    mystr='aaa,bbb,ccc'
    print(mystr.split(','))
    #split 默认分隔符为泛空格符
    mystr='a b\nc\n d '
    print(mystr.split())

    #join
    delim='ni'
    print(delim.join(['aaa','bbb','ccc']))
    print(' '.join(['aaa','bbb','ccc']))

    #list
    chars=list('lorreta')
    print(chars)

    chars.append('!')
    print(''.join(chars))

    #整形和字符串类型转换
    int("42")
    eval("42")

    str(42)
    repr(42)

    print("%d" %42)
    print('{:d}'.format(42))

            
                作者：qq_27803491 发表于2016/12/20 12:45:17 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53761679)
            
            
            阅读：34 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53761679#comments)
            