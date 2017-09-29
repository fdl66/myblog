---
title: '[原]C申请内存函数'
tags: []
date: 2017-02-23 18:04:15
---

    
    #include &lt;iostream&gt;
    using namespace std;

    //传值调用
    void GetMemory( char **p )
    {
        *p = (char *) malloc( 100 );
    }
    //引用调用
    void GetMemory_1(char *&amp;p)
    {
        p = (char *) malloc (100);
    }

    int main()
    {
        char *str = NULL;
        char *str1 = NULL;
        GetMemory( &amp;str );
        GetMemory_1( str1 );
        strcpy( str, "hello world" );
        strcpy( str1, "hello world1" );
        cout&lt;&lt;str&lt;&lt;endl;
        cout&lt;&lt;str1&lt;&lt;endl;
        free(str);
        free(str1);
        return 0;

    }

            
                作者：qq_27803491 发表于2017/2/23 18:04:15 [原文链接](http://blog.csdn.net/qq_27803491/article/details/56677396)
            
            
            阅读：20 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/56677396#comments)
            