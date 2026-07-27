---
layout: post
title: "Yeats 的知识库上线：系列文章与翻译文档的长期阵地"
date: 2026-07-27 15:00:00
categories: [站点维护]
tags: [知识库, VitePress, 系列文章, 翻译文档]
excerpt: "介绍我的个人知识库 wiki：基于 VitePress 构建的系列化内容站点，收录翻译系列与原创系列。后续大部分成体系的技术内容都会沉淀在这里，本博客则侧重动态与随笔。"
---

这个博客之外，我搭建了一个专门承载**系列化内容**的站点——[Yeats 的知识库](https://yeatsliao.github.io/wiki/)。

## 为什么单独建知识库

博客适合记录单篇的动态、随笔和阶段性总结，但有些内容天然是成体系的：一套开源库的完整文档翻译、一个主题下十几篇递进的教程。这类内容放进博客的时间流里会被冲散，放进知识库里则有目录、有导航、有全文搜索，读起来是"一本书"的体验。

所以做了分工：

- **博客（本站）**：动态、随笔、单篇文章；
- **[知识库（wiki）](https://yeatsliao.github.io/wiki/)**：系列文章与翻译文档，长期维护、持续更新。

后续我的大部分技术内容会以系列的形式沉淀在知识库中，博客里只做简要介绍和导流。

## 现在有什么

- **[RXTX 中文文档](https://yeatsliao.github.io/wiki/translations/rxtx/)**：Java 跨平台串口/并口通信库 RXTX 的完整中文翻译（14 篇），覆盖安装指南、串口教程、移植指南、FAQ 等；
- **更多翻译系列**：更多开源项目文档的中文翻译，陆续更新中；
- **原创系列**：个人原创的技术系列文章，筹备中。

## 技术实现

知识库基于 [VitePress](https://vitepress.dev/zh/) 构建，Markdown 写作、GitHub Actions 自动构建部署到 GitHub Pages，源码开放在 [YeatsLiao/wiki](https://github.com/YeatsLiao/wiki)，欢迎提 Issue 指正错误或改进翻译。

---

**入口**：[https://yeatsliao.github.io/wiki/](https://yeatsliao.github.io/wiki/)
