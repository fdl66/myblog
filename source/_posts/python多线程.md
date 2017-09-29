---

title: python多线程
date: 2017-04-22 20:30:55
tags: [多线程,Python]
categories: python

---
# thread 模块

## 使用单线程执行循环

### 代码:
```python 

#!/usr/bin/env python
# coding=utf-8

from time import sleep , ctime 

def loop0():
    print 'start loop 0 at : ', ctime()
    sleep(4)
    print 'loop 0 done ate : ', ctime()

def loop1():
    print 'start loop 1 at : ', ctime()
    sleep(2)
    print 'loop 1 done ate : ', ctime()

def main():
    print "starting at : ",ctime()
    loop0()
    loop1()
    print "all DONE at : ",ctime()

if __name__ == '__main__':
    main()

```

### 执行结果:
>`顺序执行`


![运行结果,顺序执行](http://function.dearamaze.com/onethr_run.png)




## 使用thread模块(mtsleepA.py)

### 代码
``` python 
#!/usr/bin/env python
# coding=utf-8

import thread 
from time import sleep , ctime 

def loop0():
    print 'start loop 0 at : ',ctime()
    sleep(4)
    print 'loop 0 done at : ',ctime()

def loop1():
    print 'start loop 1 at :',ctime()
    sleep(2)
    print 'loop 1 done at :',ctime()

def main():
    print 'starting at :',ctime()
    thread.start_new_thread(loop0,())
    thread.start_new_thread(loop1,())
    sleep(6)
    print 'all done at :',ctime()

if __name__ == '__main__':
    main()

```

### 执行结果 
>`并行执行`


![执行结果,并行执行](http://function.dearamaze.com/mtsleepA.png)

## 修改mtsleepA.py 后
``` python
#!/usr/bin/env python
# coding=utf-8

import thread 
from time import sleep , ctime 

def loop0():
    print 'start loop 0 at : ',ctime()
    sleep(4)
    print 'loop 0 done at : ',ctime()

def loop1():
    print 'start loop 1 at :',ctime()
    sleep(2)
    print 'loop 1 done at :',ctime()

def main():
    print 'starting at :',ctime()
    thread.start_new_thread(loop0,())
    thread.start_new_thread(loop1,())
    #sleep(6)
    print 'all done at :',ctime()

if __name__ == '__main__':
    main()

```
注释掉了主线程中的sleep函数,发生了什么,反映了什么?
### 执行结果
>`子线程隶属于父线程,父线程生命周期结束时,子线程也会结束.`

![执行结果,主线程会强制结束子线程](http://function.dearamaze.com/mtsleepA_run2.png)

## 使用线程和锁 (mtsleepB.py)
``` python
#!/usr/bin/env python
# coding=utf-8

import thread 
from time import sleep , ctime 

loops = [4,2]

def loop(nloop,nsec,lock):
    print 'start loop ',nloop,'at:',ctime()
    sleep(nsec)
    print 'loop ',nloop ,'done at :',ctime()
    lock.release()

def main():
    print 'starting at:',ctime()
    locks=[]
    nloops = range(len(loops))
    
    #为线程创建锁
    for i in nloops:
        lock = thread.allocate_lock()
        lock.acquire()
        locks.append(lock)
    
    #开始执行各个线程
    for i in nloops:
        thread.start_new_thread(loop,(i,loops[i],locks[i]))
    
    #主线程等待所有的线程的锁完全释放
    for i in nloops:
        while locks[i].locked():pass

    print 'all DONE at:',ctime()

if __name__ == '__main__' :
    main()

```

### 执行结果:
![线程锁](http://function.dearamaze.com/mtsleepB.png)
