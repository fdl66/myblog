---
title: '[原]C申请内存函数'
tags: []
date: 2017-02-23 18:04:15
---

    
    <span class="hljs-preprocessor">#include &lt;iostream&gt;</span>
    <span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;

    <span class="hljs-comment">//传值调用</span>
    <span class="hljs-keyword">void</span> GetMemory( <span class="hljs-keyword">char</span> **p )
    {
        *p = (<span class="hljs-keyword">char</span> *) <span class="hljs-built_in">malloc</span>( <span class="hljs-number">100</span> );
    }
    <span class="hljs-comment">//引用调用</span>
    <span class="hljs-keyword">void</span> GetMemory_1(<span class="hljs-keyword">char</span> *&amp;p)
    {
        p = (<span class="hljs-keyword">char</span> *) <span class="hljs-built_in">malloc</span> (<span class="hljs-number">100</span>);
    }

    <span class="hljs-keyword">int</span> main()
    {
        <span class="hljs-keyword">char</span> *str = NULL;
        <span class="hljs-keyword">char</span> *str1 = NULL;
        GetMemory( &amp;str );
        GetMemory_1( str1 );
        <span class="hljs-built_in">strcpy</span>( str, <span class="hljs-string">"hello world"</span> );
        <span class="hljs-built_in">strcpy</span>( str1, <span class="hljs-string">"hello world1"</span> );
        <span class="hljs-built_in">cout</span>&lt;&lt;str&lt;&lt;endl;
        <span class="hljs-built_in">cout</span>&lt;&lt;str1&lt;&lt;endl;
        <span class="hljs-built_in">free</span>(str);
        <span class="hljs-built_in">free</span>(str1);
        <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;

    }

            <div>
                作者：qq_27803491 发表于2017/2/23 18:04:15 [原文链接](http://blog.csdn.net/qq_27803491/article/details/56677396)
            </div>
            <div>
            阅读：20 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/56677396#comments)
            </div>