---
title: '[原]python3.4 验证码识别'
tags: []
date: 2016-12-20 22:40:29
---

需要安装 

pillow、pytesseract、tesseract-ocr

    import pytesseract
    from PIL import Image
    image = Image.open('C:/Users/Dear/Pictures/code_img/2.jpg')
    vcode = pytesseract.image_to_string(image)
    print (vcode)

            
                作者：qq_27803491 发表于2016/12/20 22:40:29 [原文链接](http://blog.csdn.net/qq_27803491/article/details/53770867)
            
            
            阅读：147 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/53770867#comments)
            