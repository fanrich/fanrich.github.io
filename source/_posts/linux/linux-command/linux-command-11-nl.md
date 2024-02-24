---
title: '每天一个linux命令（11）: nl'
date: 2016-12-11 21:11:48
type: posts
categories: [程技]
tags: ["linux命令"]
---
　　nl命令在linux系统中用来计算文件中行号。nl 可以将输出的文件内容自动的加上行号！其默认的结果与 cat -n 有点不太一样， nl 可以将行号做比较多的显示设计，包括位数与是否自动补齐 0 等等的功能。
<!--more -->
#### 命令格式
```bash
$ nl [选项]... [文件]...
```
#### 命令功能
　　nl 命令读取 File 参数（缺省情况下标准输入），计算输入中的行号，将计算过的行号写入标准输出。 在输出中，nl 命令根据您在命令行中指定的标志来计算左边的行。 输入文本必须写在逻辑页中。每个逻辑页有头、主体和页脚节（可以有空节）。 除非使用 -p 标志，nl 命令在每个逻辑页开始的地方重新设置行号。 可以单独为头、主体和页脚节设置行计算标志（例如，头和页脚行可以被计算然而文本行不能）。
#### 命令参数
| 种类 | 参数 | 描述     |
| :-------------| :--- | :------------- |
| -b |-b a | 表示不论是否为空行，也同样列出行号(类似 cat -n) |
|  |-b t | 如果有空行，空的那一行不要列出行号(默认值) |
| -n |-n ln | 行号在萤幕的最左方显示 |
|  |-n rn | 行号在自己栏位的最右方显示，且不加 0 |
|  |-n rz | 行号在自己栏位的最右方显示，且加 0 |
| -w |-w | 行号栏位的占用的位数 |
| -p |-p | 在逻辑定界符处不重新开始计算 |
#### 命令实例
**`例一`：用 nl 列出 log2012.log 的内容**
```bash
## 文件中的空白行，nl 不会加上行号
$ nl log2012.log
```
**`例二`：用 nl 列出 log2012.log 的内容，空本行也加上行号**
```bash
$ nl -b a log2012.log
```
**`例三`：让行号前面自动补上0,统一输出格式**
```bash
$ nl -b a -n rz log2014.log
```
>nl -b a -n rz 命令行号默认为六位，要调整位数可以加上参数 -w 3 调整为3位。