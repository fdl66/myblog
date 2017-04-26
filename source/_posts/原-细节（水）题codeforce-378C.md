---
title: '[原]细节（水）题codeforce#378C'
tags: []
date: 2016-11-04 01:17:06
---

## 题目

### 网址

[http://codeforces.com/contest/733/problem/C](http://codeforces.com/contest/733/problem/C)

### 大概题意

给你N个数，然后再给你经过合并操作后的K个数，求中间合并操作？

## AC代码

    <span class="hljs-preprocessor">#define _CRT_SECURE_NO_WARNINGS</span>
    <span class="hljs-preprocessor">#include &lt;iostream&gt;</span>
    <span class="hljs-preprocessor">#include &lt;cstdio&gt;</span>
    <span class="hljs-preprocessor">#include &lt;cstring&gt;</span>
    <span class="hljs-preprocessor">#include &lt;algorithm&gt;</span>
    <span class="hljs-preprocessor">#include &lt;stack&gt;</span>
    <span class="hljs-preprocessor">#include &lt;string&gt;</span>
    <span class="hljs-preprocessor">#include &lt;set&gt;</span>
    <span class="hljs-preprocessor">#include &lt;cmath&gt;</span>
    <span class="hljs-preprocessor">#include &lt;map&gt;</span>
    <span class="hljs-preprocessor">#include &lt;queue&gt;</span>
    <span class="hljs-preprocessor">#include &lt;sstream&gt;</span>
    <span class="hljs-preprocessor">#include &lt;vector&gt;</span>
    <span class="hljs-preprocessor">#include &lt;iomanip&gt;</span>
    <span class="hljs-preprocessor">#define m0(a) memset(a,0,sizeof(a))</span>
    <span class="hljs-preprocessor">#define mm(a) memset(a,0x3f,sizeof(a))</span>
    <span class="hljs-preprocessor">#define m_1(a) memset(a,-1,sizeof(a))</span>
    <span class="hljs-preprocessor">#define f(i,a,b) for(i = a;i&lt;=b;i++)</span>
    <span class="hljs-preprocessor">#define fi(i,a,b) for(i = a;i&gt;=b;i--)</span>
    <span class="hljs-preprocessor">#define lowbit(a) ((a)&amp;(-a))</span>
    <span class="hljs-preprocessor">#define FFR freopen("data.in","r",stdin)</span>
    <span class="hljs-preprocessor">#define FFW freopen("data.out","w",stdout)</span>
    <span class="hljs-preprocessor">#define INF 0x3f3f3f3f</span>
    <span class="hljs-preprocessor">#define DEBUG printf</span>
    <span class="hljs-keyword">typedef</span> <span class="hljs-keyword">long</span> <span class="hljs-keyword">long</span> ll;
    <span class="hljs-keyword">typedef</span> <span class="hljs-keyword">long</span> <span class="hljs-keyword">double</span> ld;

    <span class="hljs-keyword">const</span> ld PI = <span class="hljs-built_in">acos</span>(-<span class="hljs-number">1.0</span>);

    <span class="hljs-keyword">using</span> <span class="hljs-keyword">namespace</span> <span class="hljs-built_in">std</span>;
    <span class="hljs-preprocessor">#define SIZE 550</span>

    <span class="hljs-keyword">int</span> a[SIZE];
    <span class="hljs-keyword">int</span> b[SIZE];

    <span class="hljs-keyword">struct</span> Chuan{
        <span class="hljs-keyword">int</span> c_start;
        <span class="hljs-keyword">int</span> c_end;
        <span class="hljs-keyword">int</span> c_max;
    };
    <span class="hljs-keyword">struct</span> Print{
        <span class="hljs-keyword">int</span> num;
        <span class="hljs-keyword">char</span> dire;
    };
    <span class="hljs-stl_container"><span class="hljs-built_in">vector</span>&lt;Chuan&gt;</span> chuan;
    <span class="hljs-stl_container"><span class="hljs-built_in">queue</span>&lt;Print&gt;</span> print;
    <span class="hljs-keyword">int</span> main()
    {
        <span class="hljs-keyword">int</span> n,k;
        <span class="hljs-built_in">scanf</span>(<span class="hljs-string">"%d"</span>,&amp;n);
        <span class="hljs-keyword">int</span> i;
        f(i,<span class="hljs-number">1</span>,n){
            <span class="hljs-built_in">scanf</span>(<span class="hljs-string">"%d"</span>,&amp;a[i]);
        }
        <span class="hljs-built_in">scanf</span>(<span class="hljs-string">"%d"</span>,&amp;k);
        <span class="hljs-keyword">int</span> site=<span class="hljs-number">1</span>;
        <span class="hljs-keyword">bool</span> flag=<span class="hljs-number">0</span>;
        f(i,<span class="hljs-number">1</span>,k){
            <span class="hljs-built_in">scanf</span>(<span class="hljs-string">"%d"</span>,&amp;b[i]);
            <span class="hljs-keyword">if</span>(flag)<span class="hljs-keyword">continue</span>;
            ll all=<span class="hljs-number">0</span>;
            Chuan onechuan;
            onechuan.c_start=site;
            onechuan.c_max=<span class="hljs-number">0</span>;
            <span class="hljs-keyword">int</span> max_ele=<span class="hljs-number">0</span>;
            <span class="hljs-keyword">while</span>(all&lt;b[i]){
                <span class="hljs-keyword">if</span>(a[site]&gt;max_ele){
                    max_ele=a[site];
                    onechuan.c_max=site;
                }
                <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(a[site]==max_ele){
                    <span class="hljs-keyword">if</span>(site-<span class="hljs-number">1</span>&gt;=onechuan.c_start&amp;&amp;a[site]&gt;a[site-<span class="hljs-number">1</span>]){
                        onechuan.c_max=site;
                    }
                    <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(site+<span class="hljs-number">1</span>&lt;=n&amp;&amp;all+a[site]+a[site+<span class="hljs-number">1</span>]&lt;=b[i]&amp;&amp;a[site]&gt;a[site+<span class="hljs-number">1</span>]){
                        onechuan.c_max=site;
                    }
                }
                all+=a[site++];
            }
            onechuan.c_end=site-<span class="hljs-number">1</span>;
            <span class="hljs-keyword">if</span>(all!=b[i])flag=<span class="hljs-number">1</span>;
            chuan.push_back(onechuan);
            <span class="hljs-comment">//DEBUG("%d %d %d \n",onechuan.c_start,onechuan.c_max,onechuan.c_end);</span>
        }
        <span class="hljs-keyword">if</span>(flag){
            <span class="hljs-built_in">printf</span>(<span class="hljs-string">"NO\n"</span>);
            <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
        }
        <span class="hljs-keyword">if</span>(site!=n+<span class="hljs-number">1</span>){
            <span class="hljs-built_in">printf</span>(<span class="hljs-string">"NO\n"</span>);
            <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
        }
        i=<span class="hljs-number">0</span>;
        <span class="hljs-keyword">while</span>(!print.empty()){
            print.pop();
        }
        <span class="hljs-keyword">for</span>(<span class="hljs-stl_container"><span class="hljs-built_in">vector</span>&lt;Chuan&gt;</span>::iterator it=chuan.begin();it&lt;chuan.end();it++){
            i++;
            <span class="hljs-keyword">if</span>(it-&gt;c_start==it-&gt;c_end)<span class="hljs-keyword">continue</span>;
            <span class="hljs-keyword">int</span> pointer=it-&gt;c_max;
            <span class="hljs-keyword">if</span>(pointer-<span class="hljs-number">1</span>&gt;=it-&gt;c_start&amp;&amp;a[pointer]&gt;a[pointer-<span class="hljs-number">1</span>]){
                <span class="hljs-keyword">while</span>(pointer&gt;it-&gt;c_start){
                    Print oneprint;
                    oneprint.num=i+pointer-it-&gt;c_start;
                    pointer--;
                    oneprint.dire=<span class="hljs-string">'L'</span>;
                    print.push(oneprint);
                }
                pointer=it-&gt;c_max;
                <span class="hljs-keyword">while</span>(pointer&lt;it-&gt;c_end){
                    Print oneprint;
                    oneprint.num=i;
                    pointer++;
                    oneprint.dire=<span class="hljs-string">'R'</span>;
                    print.push(oneprint);
                }

            }
            <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(pointer+<span class="hljs-number">1</span>&lt;=it-&gt;c_end&amp;&amp;a[pointer]&gt;a[pointer+<span class="hljs-number">1</span>]){
                <span class="hljs-keyword">while</span>(pointer&lt;it-&gt;c_end){
                    Print oneprint;
                    oneprint.num=i+it-&gt;c_max-it-&gt;c_start;
                    <span class="hljs-comment">//DEBUG("hello world!\n");</span>
                    pointer++;
                    oneprint.dire=<span class="hljs-string">'R'</span>;
                    print.push(oneprint);
                }
                pointer=it-&gt;c_max;
                <span class="hljs-keyword">while</span>(pointer&gt;it-&gt;c_start){
                    Print oneprint;
                    oneprint.num=i+pointer-it-&gt;c_start;
                    pointer--;
                    oneprint.dire=<span class="hljs-string">'L'</span>;
                    print.push(oneprint);
                }
            }
            <span class="hljs-keyword">else</span> {
                <span class="hljs-built_in">printf</span>(<span class="hljs-string">"NO\n"</span>);
                <span class="hljs-keyword">while</span>(!print.empty()){
                    print.pop();
                }
                <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
            }
            <span class="hljs-comment">//DEBUG("%d %d %d\n",it-&gt;c_start,it-&gt;c_max,it-&gt;c_end);</span>
        }
        <span class="hljs-built_in">puts</span>(<span class="hljs-string">"YES"</span>);
        <span class="hljs-keyword">while</span>(!print.empty()){
            Print oneprint=print.front();
            print.pop();
            <span class="hljs-built_in">printf</span>(<span class="hljs-string">"%d %c\n"</span>,oneprint.num,oneprint.dire);
        }
        <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
    }

## 经验教训

1.  你离AC还差N个细节！
2.  其实还是心不够静，思维跟不上，静下来后，你的智商会变高！
3.  仔细阅读题意，然后注意关掉DEBUG！
            <div>
                作者：qq_27803491 发表于2016/11/4 1:17:06 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53029288)
            </div>
            <div>
            阅读：89 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53029288#comments)
            </div>