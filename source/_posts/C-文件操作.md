---
title: '[原]C++文件操作'
tags: []
date: 2017-03-15 11:22:40
---

    string  getFileContext(const string&amp; filename)
    {
        string str;
        str.clear();
        char buf[1024];
        char *p;
        p = buf;
        memset(buf, 0, 1024);
        ifstream in;
        in.open(filename);
        while ((*p = in.get()) != EOF)
        {
            p++;
        }
        cout &lt;&lt; "Buf" &lt;&lt; endl;
        puts(buf);
        str += buf;
        cout &lt;&lt; str &lt;&lt; endl;
        in.close();
        return str;
    }

            
                作者：qq_27803491 发表于2017/3/15 11:22:40 [原文链接](http://blog.csdn.net/qq_27803491/article/details/62217799)
            
            
            阅读：13 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/62217799#comments)
            