---
title: '[原]markdown 语法'
tags: []
date: 2017-02-08 22:19:58
---

# 欢迎使用Markdown编辑器写博客

本Markdown编辑器使用[StackEdit][6]修改而来，用它写博客，将会带来全新的体验哦：

*   **Markdown和扩展Markdown简洁的语法**
*   **代码块高亮**
*   **图片链接和图片上传**
*   **_LaTex_数学公式**
*   **UML序列图和流程图**
*   **离线写博客**
*   **导入导出Markdown文件**
*   **丰富的快捷键**

* * *

## 快捷键

*   加粗    `Ctrl + B`*   斜体    `Ctrl + I`*   引用    `Ctrl + Q`
*   插入链接    `Ctrl + L`
*   插入代码    `Ctrl + K`
*   插入图片    `Ctrl + G`
*   提升标题    `Ctrl + H`
*   有序列表    `Ctrl + O`
*   无序列表    `Ctrl + U`
*   横线    `Ctrl + R`
*   撤销    `Ctrl + Z`
*   重做    `Ctrl + Y`

## Markdown及扩展

> Markdown 是一种轻量级标记语言，它允许人们使用易读易写的纯文本格式编写文档，然后转换成格式丰富的HTML页面。    —— [ [ 维基百科 ]](https://zh.wikipedia.org/wiki/Markdown)

使用简单的符号标识不同的标题，将某些文字标记为**粗体**或者_斜体_，创建一个[链接](http://www.csdn.net)等，详细语法参考帮助？。

本编辑器支持 **Markdown Extra** , 　扩展了很多好用的功能。具体请参考[Github](https://github.com/jmcmanus/pagedown-extra "Pagedown Extra").  

### 表格

**Markdown　Extra**　表格语法：

<table>
<thead>
<tr>
  <th>项目</th>
  <th>价格</th>
</tr>
</thead>
<tbody><tr>
  <td>Computer</td>
  <td>$1600</td>
</tr>
<tr>
  <td>Phone</td>
  <td>$12</td>
</tr>
<tr>
  <td>Pipe</td>
  <td>$1</td>
</tr>
</tbody></table>

可以使用冒号来定义对齐方式：

<table>
<thead>
<tr>
  <th align="left">项目</th>
  <th align="right">价格</th>
  <th align="center">数量</th>
</tr>
</thead>
<tbody><tr>
  <td align="left">Computer</td>
  <td align="right">1600 元</td>
  <td align="center">5</td>
</tr>
<tr>
  <td align="left">Phone</td>
  <td align="right">12 元</td>
  <td align="center">12</td>
</tr>
<tr>
  <td align="left">Pipe</td>
  <td align="right">1 元</td>
  <td align="center">234</td>
</tr>
</tbody></table>

### 定义列表

<dl>
<dt>**Markdown　Extra**　定义列表语法：</dt>
<dt>项目１</dt>
<dt>项目２</dt>
<dd>定义 A</dd>

<dd>定义 B</dd>

<dt>项目３</dt>
<dd>定义 C</dd>

<dd>

定义 D

> 定义D内容
</dd>
</dl>

### 代码块

代码块语法遵循标准markdown代码，例如：

    <span class="hljs-decorator">@requires_authorization</span>
    <span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">somefunc</span><span class="hljs-params">(param1=<span class="hljs-string">''</span>, param2=<span class="hljs-number">0</span>)</span>:</span>
        <span class="hljs-string">'''A docstring'''</span>
        <span class="hljs-keyword">if</span> param1 &gt; param2: <span class="hljs-comment"># interesting</span>
            <span class="hljs-keyword">print</span> <span class="hljs-string">'Greater'</span>
        <span class="hljs-keyword">return</span> (param2 - param1 + <span class="hljs-number">1</span>) <span class="hljs-keyword">or</span> <span class="hljs-keyword">None</span>
    <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">SomeClass</span>:</span>
        <span class="hljs-keyword">pass</span>
    <span class="hljs-prompt">&gt;&gt;&gt; </span>message = <span class="hljs-string">'''interpreter
    <span class="hljs-prompt">... </span>prompt'''</span>

### 脚注

生成一个脚注[1](#fn:footnote "See footnote").

<div class="toc">

*   [欢迎使用Markdown编辑器写博客](#欢迎使用markdown编辑器写博客)

        *   [快捷键](#快捷键)
    *   [Markdown及扩展](#markdown及扩展)

                *   [表格](#表格)
        *   [定义列表](#定义列表)
        *   [代码块](#代码块)
        *   [脚注](#脚注)
        *   [数学公式](#数学公式)
        *   [UML 图](#uml-图)

        *   [离线写博客](#离线写博客)
    *   [浏览器兼容](#浏览器兼容)
</div>

### 数学公式

使用MathJax渲染_LaTex_ 数学公式，详见[math.stackexchange.com](http://math.stackexchange.com/).

*   行内公式，数学公式为：<span class="MathJax_Preview"></span><span class="MathJax" id="MathJax-Element-3-Frame" role="textbox" aria-readonly="true"><nobr><span class="math" id="MathJax-Span-44" style="width: 13.496em; display: inline-block;"><span style="display: inline-block; position: relative; width: 10.776em; height: 0px; font-size: 125%;"><span style="position: absolute; clip: rect(2.136em 1000em 3.469em -0.477em); top: -3.037em; left: 0.003em;"><span class="mrow" id="MathJax-Span-45"><span class="mi" id="MathJax-Span-46" style="font-family: MathJax_Main;">Γ</span><span class="mo" id="MathJax-Span-47" style="font-family: MathJax_Main;">(</span><span class="mi" id="MathJax-Span-48" style="font-family: MathJax_Math-italic;">n</span><span class="mo" id="MathJax-Span-49" style="font-family: MathJax_Main;">)</span><span class="mo" id="MathJax-Span-50" style="font-family: MathJax_Main; padding-left: 0.269em;">=</span><span class="mo" id="MathJax-Span-51" style="font-family: MathJax_Main; padding-left: 0.269em;">(</span><span class="mi" id="MathJax-Span-52" style="font-family: MathJax_Math-italic;">n</span><span class="mo" id="MathJax-Span-53" style="font-family: MathJax_Main; padding-left: 0.216em;">−</span><span class="mn" id="MathJax-Span-54" style="font-family: MathJax_Main; padding-left: 0.216em;">1</span><span class="mo" id="MathJax-Span-55" style="font-family: MathJax_Main;">)</span><span class="mo" id="MathJax-Span-56" style="font-family: MathJax_Main;">!</span><span class="mspace" id="MathJax-Span-57" style="height: 0.003em; vertical-align: 0.003em; width: 1.016em; display: inline-block; overflow: hidden;"></span><span class="mi" id="MathJax-Span-58" style="font-family: MathJax_Main;">∀</span><span class="mi" id="MathJax-Span-59" style="font-family: MathJax_Math-italic;">n</span><span class="mo" id="MathJax-Span-60" style="font-family: MathJax_Main; padding-left: 0.269em;">∈</span><span class="texatom" id="MathJax-Span-61" style="padding-left: 0.269em;"><span class="mrow" id="MathJax-Span-62"><span class="mi" id="MathJax-Span-63" style="font-family: MathJax_AMS;">N</span></span></span></span><span style="display: inline-block; width: 0px; height: 3.043em;"></span></span></span><span style="border-left: 0.003em solid; display: inline-block; overflow: hidden; width: 0px; height: 1.403em; vertical-align: -0.397em;"></span></span></nobr></span><script type="math/tex" id="MathJax-Element-3">\Gamma(n) = (n-1)!\quad\forall n\in\mathbb N</script>。
*   块级公式：

<span class="MathJax_Preview"></span><div class="MathJax_Display" role="textbox" aria-readonly="true" style="text-align: center;"><span class="MathJax" id="MathJax-Element-4-Frame"><nobr><span class="math" id="MathJax-Span-64" style="width: 11.416em; display: inline-block;"><span style="display: inline-block; position: relative; width: 9.123em; height: 0px; font-size: 125%;"><span style="position: absolute; clip: rect(0.856em 1000em 3.576em -0.424em); top: -2.717em; left: 0.003em;"><span class="mrow" id="MathJax-Span-65"><span class="mi" id="MathJax-Span-66" style="font-family: MathJax_Math-italic;">x</span><span class="mo" id="MathJax-Span-67" style="font-family: MathJax_Main; padding-left: 0.269em;">=</span><span class="mstyle" id="MathJax-Span-68" style="padding-left: 0.269em;"><span class="mrow" id="MathJax-Span-69"><span class="mfrac" id="MathJax-Span-70"><span style="display: inline-block; position: relative; width: 7.043em; height: 0px; margin-right: 0.109em; margin-left: 0.109em;"><span style="position: absolute; clip: rect(1.496em 1000em 3.043em -0.371em); top: -3.411em; left: 50%; margin-left: -3.464em;"><span class="mrow" id="MathJax-Span-71"><span class="mo" id="MathJax-Span-72" style="font-family: MathJax_Main;">−</span><span class="mi" id="MathJax-Span-73" style="font-family: MathJax_Math-italic;">b</span><span class="mo" id="MathJax-Span-74" style="font-family: MathJax_Main; padding-left: 0.216em;">±</span><span class="msqrt" id="MathJax-Span-75" style="padding-left: 0.216em;"><span style="display: inline-block; position: relative; width: 4.536em; height: 0px;"><span style="position: absolute; clip: rect(1.656em 1000em 2.883em -0.424em); top: -2.717em; left: 1.016em;"><span class="mrow" id="MathJax-Span-76"><span class="msubsup" id="MathJax-Span-77"><span style="display: inline-block; position: relative; width: 0.856em; height: 0px;"><span style="position: absolute; clip: rect(1.709em 1000em 2.723em -0.424em); top: -2.557em; left: 0.003em;"><span class="mi" id="MathJax-Span-78" style="font-family: MathJax_Math-italic;">b</span><span style="display: inline-block; width: 0px; height: 2.563em;"></span></span><span style="position: absolute; top: -2.931em; left: 0.429em;"><span class="mn" id="MathJax-Span-79" style="font-size: 70.7%; font-family: MathJax_Main;">2</span><span style="display: inline-block; width: 0px; height: 2.509em;"></span></span></span></span><span class="mo" id="MathJax-Span-80" style="font-family: MathJax_Main; padding-left: 0.216em;">−</span><span class="mn" id="MathJax-Span-81" style="font-family: MathJax_Main; padding-left: 0.216em;">4</span><span class="mi" id="MathJax-Span-82" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-83" style="font-family: MathJax_Math-italic;">c</span></span><span style="display: inline-block; width: 0px; height: 2.723em;"></span></span><span style="position: absolute; clip: rect(3.576em 1000em 4.056em -0.477em); top: -4.744em; left: 1.016em;"><span style="display: inline-block; position: relative; width: 3.523em; height: 0px;"><span style="position: absolute; font-family: MathJax_Main; top: -3.997em; left: -0.104em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="position: absolute; font-family: MathJax_Main; top: -3.997em; left: 2.829em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="font-family: MathJax_Main; position: absolute; top: -3.997em; left: 0.376em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="font-family: MathJax_Main; position: absolute; top: -3.997em; left: 0.856em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="font-family: MathJax_Main; position: absolute; top: -3.997em; left: 1.389em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="font-family: MathJax_Main; position: absolute; top: -3.997em; left: 1.869em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="font-family: MathJax_Main; position: absolute; top: -3.997em; left: 2.349em;">−<span style="display: inline-block; width: 0px; height: 4.003em;"></span></span></span><span style="display: inline-block; width: 0px; height: 4.003em;"></span></span><span style="position: absolute; clip: rect(2.989em 1000em 4.536em -0.371em); top: -4.211em; left: 0.003em;"><span style="font-family: MathJax_Size1;">√</span><span style="display: inline-block; width: 0px; height: 4.003em;"></span></span></span></span></span><span style="display: inline-block; width: 0px; height: 2.723em;"></span></span><span style="position: absolute; clip: rect(1.923em 1000em 2.883em -0.424em); top: -2.024em; left: 50%; margin-left: -0.477em;"><span class="mrow" id="MathJax-Span-84"><span class="mn" id="MathJax-Span-85" style="font-family: MathJax_Main;">2</span><span class="mi" id="MathJax-Span-86" style="font-family: MathJax_Math-italic;">a</span></span><span style="display: inline-block; width: 0px; height: 2.723em;"></span></span><span style="position: absolute; clip: rect(0.856em 1000em 1.229em -0.477em); top: -1.277em; left: 0.003em;"><span style="border-left: 7.043em solid; display: inline-block; overflow: hidden; width: 0px; height: 1.25px; vertical-align: 0.003em;"></span><span style="display: inline-block; width: 0px; height: 1.069em;"></span></span></span></span></span></span></span><span style="display: inline-block; width: 0px; height: 2.723em;"></span></span></span><span style="border-left: 0.003em solid; display: inline-block; overflow: hidden; width: 0px; height: 3.137em; vertical-align: -0.93em;"></span></span></nobr></span></div><script type="math/tex; mode=display" id="MathJax-Element-4">	x = \dfrac{-b \pm \sqrt{b^2 - 4ac}}{2a} </script>

更多LaTex语法请参考 [这儿](http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference).

### UML 图:

可以渲染序列图：

<div class="sequence-diagram"><svg height="265" version="1.1" width="460" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.5px; top: -0.0625px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><path stroke-linecap="round" d="M5,0 0,2.5 5,5z" id="raphael-marker-block" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><marker id="raphael-marker-endblock55" markerHeight="5" markerWidth="5" orient="auto" refX="2.5" refY="2.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#raphael-marker-block" transform="rotate(180 2.5 2.5) scale(1,1)" stroke-width="1.0000" fill="#000" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker></defs><rect x="10" y="20" width="50" height="39" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="20" y="30" width="30" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="35" y="39.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">张三</tspan></text><rect x="10" y="206" width="50" height="39" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="20" y="216" width="30" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="35" y="225.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">张三</tspan></text><path fill="none" stroke="#000000" d="M35,59L35,206" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="195" y="20" width="50" height="39" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="205" y="30" width="30" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="220" y="39.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">李四</tspan></text><rect x="195" y="206" width="50" height="39" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="205" y="216" width="30" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="220" y="225.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">李四</tspan></text><path fill="none" stroke="#000000" d="M220,59L220,206" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="45.921875" y="74.5" width="163.125" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="127.5" y="84" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">嘿，小四儿, 写博客了没?</tspan></text><path fill="none" stroke="#000000" d="M35,98C35,98,185.4685080051422,98,215.00383037724532,98" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><rect x="240" y="118" width="145" height="29" r="0" rx="0" ry="0" fill="none" stroke="#000000" stroke-width="2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><rect x="245" y="123" width="135" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="312.5" y="132.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">李四愣了一下，说：</tspan></text><rect x="45" y="162.5" width="165" height="19" r="0" rx="0" ry="0" fill="#ffffff" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect><text x="127.5" y="172" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: &quot;Andale Mono&quot;, monospace;" font-size="16px" font-family="Andale Mono, monospace"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">忙得吐血，哪有时间写。</tspan></text><path fill="none" stroke="#000000" d="M220,186C220,186,69.53149199485779,186,39.99616962275468,186" stroke-width="2" marker-end="url(#raphael-marker-endblock55)" stroke-dasharray="6,2" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path></svg></div>

或者流程图：

<div class="flow-chart"><svg height="372.75" version="1.1" width="143.5" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; top: -0.0625px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><marker id="raphael-marker-endblock33" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker></defs><rect x="0" y="0" width="50" height="39" r="20" rx="20" ry="20" fill="#ffffff" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="2" class="flowchart" id="st" transform="matrix(1,0,0,1,35.25,13.75)"></rect><text x="10" y="19.5" text-anchor="start" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: sans-serif;" id="stt" class="flowchartt" font-size="14px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,35.25,13.75)"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">开始</tspan></text><rect x="0" y="0" width="80" height="39" r="0" rx="0" ry="0" fill="#ffffff" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="2" class="flowchart" id="op" transform="matrix(1,0,0,1,20.25,116.5)"></rect><text x="10" y="19.5" text-anchor="start" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: sans-serif;" id="opt" class="flowchartt" font-size="14px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,20.25,116.5)"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">我的操作</tspan></text><path fill="#ffffff" stroke="#000000" d="M28.125,14.625L0,29.25L56.25,58.5L112.5,29.25L56.25,0L0,29.25" stroke-width="2" font-family="sans-serif" font-weight="normal" id="cond" class="flowchart" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;" transform="matrix(1,0,0,1,4,209.5)"></path><text x="33.125" y="29.25" text-anchor="start" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: sans-serif;" id="condt" class="flowchartt" font-size="14px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,4,209.5)"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">确认？</tspan><tspan dy="18" x="33.125" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></tspan></text><rect x="0" y="0" width="50" height="39" r="20" rx="20" ry="20" fill="#ffffff" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="2" class="flowchart" id="e" transform="matrix(1,0,0,1,35.25,331.75)"></rect><text x="10" y="19.5" text-anchor="start" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: sans-serif;" id="et" class="flowchartt" font-size="14px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,35.25,331.75)"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">结束</tspan></text><path fill="none" stroke="#000000" d="M60.25,52.75C60.25,52.75,60.25,100.8800451606512,60.25,113.50008141615399" stroke-width="2" marker-end="url(#raphael-marker-endblock33)" font-family="sans-serif" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M60.25,155.5C60.25,155.5,60.25,195.15409994125366,60.25,206.50043908460066" stroke-width="2" marker-end="url(#raphael-marker-endblock33)" font-family="sans-serif" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M60.25,268C60.25,268,60.25,316.1300451606512,60.25,328.750081416154" stroke-width="2" marker-end="url(#raphael-marker-endblock33)" font-family="sans-serif" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path><text x="65.25" y="278" text-anchor="start" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: sans-serif;" font-size="14px" font-family="sans-serif" font-weight="normal"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">yes</tspan></text><path fill="none" stroke="#000000" d="M116.5,238.75C116.5,238.75,141.5,238.75,141.5,238.75C141.5,238.75,141.5,91.5,141.5,91.5C141.5,91.5,60.25,91.5,60.25,91.5C60.25,91.5,60.25,106.87344455718994,60.25,113.50924777425826" stroke-width="2" marker-end="url(#raphael-marker-endblock33)" font-family="sans-serif" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path><text x="121.5" y="228.75" text-anchor="start" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: sans-serif;" font-size="14px" font-family="sans-serif" font-weight="normal"><tspan dy="5.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">no</tspan></text></svg></div>

*   关于 **序列图** 语法，参考 [这儿](http://bramp.github.io/js-sequence-diagrams/),
*   关于 **流程图** 语法，参考 [这儿](http://adrai.github.io/flowchart.js/).

## 离线写博客

即使用户在没有网络的情况下，也可以通过本编辑器离线写博客（直接在曾经使用过的浏览器中输入[write.blog.csdn.net/mdeditor](http://write.blog.csdn.net/mdeditor)即可。**Markdown编辑器**使用浏览器离线存储将内容保存在本地。

用户写博客的过程中，内容实时保存在浏览器缓存中，在用户关闭浏览器或者其它异常情况下，内容不会丢失。用户再次打开浏览器时，会显示上次用户正在编辑的没有发表的内容。

博客发表后，本地缓存将被删除。　

用户可以选择  把正在写的博客保存到服务器草稿箱，即使换浏览器或者清除缓存，内容也不会丢失。

> **注意：**虽然浏览器存储大部分时候都比较可靠，但为了您的数据安全，在联网后，**请务必及时发表或者保存到服务器草稿箱**。

## 浏览器兼容

1.  目前，本编辑器对Chrome浏览器支持最为完整。建议大家使用较新版本的Chrome。
2.  IE９以下不支持
3.  IE９，１０，１１存在以下问题

        1.  不支持离线功能
    2.  IE9不支持文件导入导出
    3.  IE10不支持拖拽文件导入

* * *

<div class="footnotes">

* * *

1.  这里是 **脚注** 的 _内容_.

    目录

    用 `[TOC]`来生成目录：
    [6]: [https://github.com/benweet/stackedit](https://github.com/benweet/stackedit) [↩](#fnref:footnote "Return to article")</div>
            <div>
                作者：qq_27803491 发表于2017/2/8 22:19:58 [原文链接](http://blog.csdn.net/qq_27803491/article/details/54933885)
            </div>
            <div>
            阅读：19 评论：0 [查看评论](http://blog.csdn.net/qq_27803491/article/details/54933885#comments)
            </div>