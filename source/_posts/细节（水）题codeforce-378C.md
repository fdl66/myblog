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

    #define _CRT_SECURE_NO_WARNINGS
    #include &lt;iostream&gt;
    #include &lt;cstdio&gt;
    #include &lt;cstring&gt;
    #include &lt;algorithm&gt;
    #include &lt;stack&gt;
    #include &lt;string&gt;
    #include &lt;set&gt;
    #include &lt;cmath&gt;
    #include &lt;map&gt;
    #include &lt;queue&gt;
    #include &lt;sstream&gt;
    #include &lt;vector&gt;
    #include &lt;iomanip&gt;
    #define m0(a) memset(a,0,sizeof(a))
    #define mm(a) memset(a,0x3f,sizeof(a))
    #define m_1(a) memset(a,-1,sizeof(a))
    #define f(i,a,b) for(i = a;i&lt;=b;i++)
    #define fi(i,a,b) for(i = a;i&gt;=b;i--)
    #define lowbit(a) ((a)&amp;(-a))
    #define FFR freopen("data.in","r",stdin)
    #define FFW freopen("data.out","w",stdout)
    #define INF 0x3f3f3f3f
    #define DEBUG printf
    typedef long long ll;
    typedef long double ld;

    const ld PI = acos(-1.0);

    using namespace std;
    #define SIZE 550

    int a[SIZE];
    int b[SIZE];

    struct Chuan{
        int c_start;
        int c_end;
        int c_max;
    };
    struct Print{
        int num;
        char dire;
    };
    vector&lt;Chuan&gt; chuan;
    queue&lt;Print&gt; print;
    int main()
    {
        int n,k;
        scanf("%d",&amp;n);
        int i;
        f(i,1,n){
            scanf("%d",&amp;a[i]);
        }
        scanf("%d",&amp;k);
        int site=1;
        bool flag=0;
        f(i,1,k){
            scanf("%d",&amp;b[i]);
            if(flag)continue;
            ll all=0;
            Chuan onechuan;
            onechuan.c_start=site;
            onechuan.c_max=0;
            int max_ele=0;
            while(all&lt;b[i]){
                if(a[site]&gt;max_ele){
                    max_ele=a[site];
                    onechuan.c_max=site;
                }
                else if(a[site]==max_ele){
                    if(site-1&gt;=onechuan.c_start&amp;&amp;a[site]&gt;a[site-1]){
                        onechuan.c_max=site;
                    }
                    else if(site+1&lt;=n&amp;&amp;all+a[site]+a[site+1]&lt;=b[i]&amp;&amp;a[site]&gt;a[site+1]){
                        onechuan.c_max=site;
                    }
                }
                all+=a[site++];
            }
            onechuan.c_end=site-1;
            if(all!=b[i])flag=1;
            chuan.push_back(onechuan);
            //DEBUG("%d %d %d \n",onechuan.c_start,onechuan.c_max,onechuan.c_end);
        }
        if(flag){
            printf("NO\n");
            return 0;
        }
        if(site!=n+1){
            printf("NO\n");
            return 0;
        }
        i=0;
        while(!print.empty()){
            print.pop();
        }
        for(vector&lt;Chuan&gt;::iterator it=chuan.begin();it&lt;chuan.end();it++){
            i++;
            if(it-&gt;c_start==it-&gt;c_end)continue;
            int pointer=it-&gt;c_max;
            if(pointer-1&gt;=it-&gt;c_start&amp;&amp;a[pointer]&gt;a[pointer-1]){
                while(pointer&gt;it-&gt;c_start){
                    Print oneprint;
                    oneprint.num=i+pointer-it-&gt;c_start;
                    pointer--;
                    oneprint.dire='L';
                    print.push(oneprint);
                }
                pointer=it-&gt;c_max;
                while(pointer&lt;it-&gt;c_end){
                    Print oneprint;
                    oneprint.num=i;
                    pointer++;
                    oneprint.dire='R';
                    print.push(oneprint);
                }

            }
            else if(pointer+1&lt;=it-&gt;c_end&amp;&amp;a[pointer]&gt;a[pointer+1]){
                while(pointer&lt;it-&gt;c_end){
                    Print oneprint;
                    oneprint.num=i+it-&gt;c_max-it-&gt;c_start;
                    //DEBUG("hello world!\n");
                    pointer++;
                    oneprint.dire='R';
                    print.push(oneprint);
                }
                pointer=it-&gt;c_max;
                while(pointer&gt;it-&gt;c_start){
                    Print oneprint;
                    oneprint.num=i+pointer-it-&gt;c_start;
                    pointer--;
                    oneprint.dire='L';
                    print.push(oneprint);
                }
            }
            else {
                printf("NO\n");
                while(!print.empty()){
                    print.pop();
                }
                return 0;
            }
            //DEBUG("%d %d %d\n",it-&gt;c_start,it-&gt;c_max,it-&gt;c_end);
        }
        puts("YES");
        while(!print.empty()){
            Print oneprint=print.front();
            print.pop();
            printf("%d %c\n",oneprint.num,oneprint.dire);
        }
        return 0;
    }

## 经验教训

1.  你离AC还差N个细节！
2.  其实还是心不够静，思维跟不上，静下来后，你的智商会变高！
3.  仔细阅读题意，然后注意关掉DEBUG！
            
                作者：qq_27803491 发表于2016/11/4 1:17:06 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53029288)
            
            
            阅读：89 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53029288#comments)
            