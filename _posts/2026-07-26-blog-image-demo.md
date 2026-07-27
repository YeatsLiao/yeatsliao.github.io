---
layout: post
title: "示例：博客插图的存放与引用方法"
date: 2026-07-26 16:00:00
categories: [站点维护]
tags: [Jekyll, 博客写作, 图片管理]
excerpt: "一篇带图片的示例文章：演示博客插图按篇存放的目录规范、Markdown 引用写法和图片命名建议。写新博客需要配图时照抄本文即可。"
---

这是一篇带图片的示例文章，演示本站博客插图的完整流程。以后写新博客需要配图时，照抄本文的做法即可。看完可以直接删掉本文和对应图片文件夹。

## 第一步：为文章建一个图片文件夹

每篇博客对应 `images/posts/` 下的一个独立文件夹，**文件夹名与 `_posts` 里的文章文件名保持一致**（去掉 `.md` 后缀）。比如本文文件是 `_posts/2026-07-26-blog-image-demo.md`，图片就放在：

```
images/posts/2026-07-26-blog-image-demo/
├── cover.svg                    # 封面图（可选）
├── fig-01-folder-structure.svg  # 正文插图，fig-序号-描述 命名
└── fig-02-markdown-syntax.svg
```

![目录结构示意](/images/posts/2026-07-26-blog-image-demo/fig-01-folder-structure.svg)

这样做的好处：一篇文章的图全在一个文件夹里，删文章时把文件夹一起删掉即可，不会留下孤儿图片。

## 第二步：在 Markdown 里引用

用标准 Markdown 语法，路径以 `/images` 开头的绝对路径：

```markdown
![图片描述](/images/posts/2026-07-26-blog-image-demo/fig-01-folder-structure.svg)
```

![Markdown 插图语法](/images/posts/2026-07-26-blog-image-demo/fig-02-markdown-syntax.svg)

几个注意点：

1. **方括号里的描述不要省略**——它是图片加载失败时的替代文字，也有利于 SEO；
2. **jpg/png/gif 格式的图片会自动获得点击放大**（灯箱效果），svg/webp 则不会，正文照片建议优先用 jpg/png；
3. 图片格式建议：照片用 `jpg`，截图用 `png`，图表/示意图可用 `svg`。

## 第三步（可选）：封面图

如果想在文章开头放一张封面，直接在正文第一段前插入即可：

```markdown
![封面](/images/posts/2026-07-26-blog-image-demo/cover.svg)
```

效果如下：

![封面示例](/images/posts/2026-07-26-blog-image-demo/cover.svg)

## 小结

| 事项 | 约定 |
|------|------|
| 存放位置 | `images/posts/{文章文件名}/` |
| 图片命名 | `cover.{格式}`、`fig-01-简短描述.{格式}`，全小写连字符 |
| 引用写法 | `![描述](/images/posts/{文章文件夹}/{文件名})` |
| 删除文章 | 连同图片文件夹一起删除 |
