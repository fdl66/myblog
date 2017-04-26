---
title: '[原]C++文件操作'
tags: []
date: 2017-03-15 11:22:40
---

    <span class="hljs-keyword">string</span>  getFileContext(<span class="hljs-keyword">const</span> <span class="hljs-keyword">string</span>&amp; filename)
    {
        <span class="hljs-keyword">string</span> str;
        str.clear();
        <span class="hljs-keyword">char</span> buf[<span class="hljs-number">1024</span>];
        <span class="hljs-keyword">char</span> *p;
        p = buf;
        memset(buf, <span class="hljs-number">0</span>, <span class="hljs-number">1024</span>);
        ifstream <span class="hljs-keyword">in</span>;
        <span class="hljs-keyword">in</span>.open(filename);
        <span class="hljs-keyword">while</span> ((*p = <span class="hljs-keyword">in</span>.<span class="hljs-keyword">get</span>()) != EOF)
        {
            p++;
        }
        cout &lt;&lt; <span class="hljs-string">"Buf"</span> &lt;&lt; endl;
        puts(buf);
        str += buf;
        cout &lt;&lt; str &lt;&lt; endl;
        <span class="hljs-keyword">in</span>.close();
        <span class="hljs-keyword">return</span> str;
    }

            <div>
                作者：qq_27803491 发表于2017/3/15 11:22:40 [原文链接](http://blog.csdn.net/qq_27803491/article/details/62217799)
            </div>
            <div>
            阅读：13 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/62217799#comments)
            </div>