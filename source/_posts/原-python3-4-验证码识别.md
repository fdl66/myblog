---
title: '[原]python3.4 验证码识别'
tags: []
date: 2016-12-20 22:40:29
---

需要安装 

pillow、pytesseract、tesseract-ocr

    <span class="hljs-keyword">import</span> pytesseract
    <span class="hljs-keyword">from</span> PIL <span class="hljs-keyword">import</span> Image
    image = Image.open(<span class="hljs-string">'C:/Users/Dear/Pictures/code_img/2.jpg'</span>)
    vcode = pytesseract.image_to_string(image)
    <span class="hljs-keyword">print</span> (vcode)

            <div>
                作者：qq_27803491 发表于2016/12/20 22:40:29 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53770867)
            </div>
            <div>
            阅读：147 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53770867#comments)
            </div>