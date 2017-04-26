---
title: python多线程之threading模块
date: 2017-04-23 06:51:40
tags:
---
# threading 模块

## 使用threading模块(mtsleepC.py)

threading模块的Thread类有一个join()方法,可以让主线程等待所有线程执行完毕

```
#!/usr/bin/env python
# coding=utf-8

import threading
from time import sleep,ctime

loops=[4,2]

def loop(nloop,nsec):
    print 'start loop:',nloop,' done at:',ctime()
    sleep(nsec)
    print 'loop',nloop,'done at:',ctime()
def main():
    print 'starting at:',ctime()
    threads=[]
    nloops=range(len(loops))

    for i in nloops:
        t=threading.Thread(target=loop,args=(i,loops[i]))
        threads.append(t)

    for i in nloops:
        threads[i].start()

    for i in nloops:
        threads[i].join()

    print 'all DONE at:',ctime()

if __name__ == '__main__':
    main()

```

## 子类化的Thread(mtsleepE.py)
本例对Thread子类化,而不是直接对其实例化,这将使我们在定制线程对象是拥有更多的灵活性,也能够简化线程调用的过程.

```
#!/usr/bin/env python
# coding=utf-8

import threading 
from time import sleep ,ctime

loops=(4,2)

class MyThread(threading.Thread):
    def __init__(self,func,args,name=''):
        threading.Thread.__init__(self)
        self.name = name 
        self.func = func 
        self.args = args 

    def run(self):
        self.func(*self.args)

def loop(nloop,nsec):
    print 'start loop',nloop,'at:',ctime()
    sleep(nsec)
    print 'loop',nloop,'done at:',ctime()

def main():
    print 'starting at:',ctime()
    threads  = []
    nloops=range(len(loops))

    for i in nloops:
        t=MyThread(loop,(i,loops[i]),loop.__name__)
        threads.append(t)

    for i in nloops:
        threads[i].start()

    for i in nloops:
        threads[i].join()

    print 'all DONE at:',ctime()

if __name__ == '__main__':
    main()

```
