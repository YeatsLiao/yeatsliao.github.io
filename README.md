# yeatsliao.github.io

[English](./YEATS_README.md)

[![Jekyll](https://img.shields.io/badge/Jekyll-4.x-cc0000?style=flat-square&logo=jekyll)](https://jekyllrb.com/)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-deployed-222?style=flat-square&logo=github)](https://yeatsliao.github.io)
[![License](https://img.shields.io/github/license/YeatsLiao/yeatsliao.github.io?style=flat-square)](LICENSE)

**Yeats_Liao（廖轶超）的个人主页** —— Java 后端 / AI 应用开发者。基于 Jekyll 构建的静态站点，支持中英文切换，所有内容数据驱动（改内容只需编辑 YAML，不用碰 HTML）。

> Personal homepage of Yeats_Liao — Java Backend / AI Application Developer. A Jekyll static site with Chinese/English toggle and fully data-driven content.

在线访问：<https://yeatsliao.github.io>

## 功能特性

- **数据驱动内容**：简介、技能、荣誉、项目、活动全部存放在 `_data/*.yml`，增删改查只需编辑 YAML
- **中英文切换**：导航栏一键切换，偏好持久化在浏览器 localStorage
- **项目卡片墙**：按分类展示开源项目，支持封面图、技术栈标签
- **活动时间线**：按年份分组的时间轴，支持角色标签与活动照片
- **博客时间轴**：Markdown 写作，按年份归档
- **响应式设计**：适配桌面 / 平板 / 移动端

## 项目架构

```
yeatsliao.github.io
├── _config.yml              # 站点全局配置（标题、SEO、头像、社交链接）
├── _data/                   # ★ 内容数据层（日常维护主要改这里）
│   ├── navigation.yml       #   导航栏菜单
│   ├── profile.yml          #   首页简介、徽章条、教育、工作经历
│   ├── skills.yml           #   技术技能
│   ├── honors.yml           #   社区荣誉 + 证书与奖项
│   ├── projects.yml         #   开源项目（分类 + 卡片）
│   └── activities.yml       #   活动时间线
├── _pages/                  # 页面模板（读取 _data 渲染，一般不用改）
│   ├── about.md             #   首页 /
│   ├── projects.md          #   项目页 /projects/
│   ├── activities.md        #   活动页 /activities/
│   └── blog.md              #   博客页 /blog/
├── _posts/                  # 博客文章（YYYY-MM-DD-标题.md）
├── _layouts/ _includes/     # 布局与组件（导航栏、侧边栏、head 等）
├── _sass/                   # 主题样式
├── assets/
│   ├── css/i18n.css         # 中英文切换样式
│   └── js/i18n.js           # 中英文切换逻辑（localStorage: site-lang）
└── images/                  # 图片资源（见下方命名规范）
    ├── site/                #   站点图标 favicon 等
    ├── projects/            #   项目截图
    ├── activities/          #   活动照片
    ├── certs/               #   证书扫描件
    └── badges/              #   徽章素材
```

## 内容维护指南

日常增删改查只涉及 `_data/` 下的 YAML 文件和 `_posts/` 目录，保存后 Jekyll 自动重新渲染。

| 想做什么 | 编辑哪个文件 | 说明 |
| --- | --- | --- |
| 改自我介绍 / 教育 / 工作经历 | `_data/profile.yml` | `intro` 为首屏段落，`badges` 为徽章条 |
| 增删技能 | `_data/skills.yml` | `groups` 下按分组维护 |
| 新增荣誉 / 证书 | `_data/honors.yml` | `community` 社区荣誉，`awards` 证书奖项（可挂证书图片） |
| 新增开源项目 | `_data/projects.yml` | 在对应 `categories` 分类的 `items` 下追加 |
| 新增活动记录 | `_data/activities.yml` | 追加条目即可，页面按日期自动倒序 |
| 调整导航菜单 | `_data/navigation.yml` | `main` 列表增删入口 |
| 写博客 | `_posts/` | 新建 `YYYY-MM-DD-标题.md`，带 front matter |

**双语字段约定**：所有展示文字均为 `zh` / `en` 两个子字段，例如：

```yaml
- name: my-new-project
  link: https://github.com/YeatsLiao/my-new-project
  desc:
    zh: 一句话中文描述。
    en: One-line English description.
  tags: [Java, Spring Boot]
  # image: images/projects/my-new-project-cover.webp   # 选填
```

**图片命名规范**：`images/{类别}/{主体}-{内容描述}-{序号|日期}.{格式}`，全小写 kebab-case，如：

- 项目封面：`images/projects/emotion-sky-cover.webp`
- 活动照片：`images/activities/2026-04-11-demowall-01.webp`
- 证书：`images/certs/2024-aliyun-clouder-openapi.webp`

## 中英文切换机制

- 导航栏 `EN / 中文` 按钮切换语言，偏好存于 `localStorage`（key: `site-lang`，默认中文）
- 实现方式：`<html>` 根元素挂 `lang-en` 类，CSS 控制 `.i18n-zh` / `.i18n-en` 的显隐
- 页面模板中双语文字写法：`<span class="i18n-zh">中文</span><span class="i18n-en">English</span>`
- 数据文件中新增内容只要填好 `zh` / `en` 字段，切换自动生效

## 本地运行

需要 Ruby 3.x 与 Bundler：

```bash
git clone https://github.com/YeatsLiao/yeatsliao.github.io.git
cd yeatsliao.github.io
bundle install
bundle exec jekyll serve
# 访问 http://127.0.0.1:4000
```

推送到 `main` 分支后由 GitHub Pages 自动构建部署。

## 致谢

主题基于 [AcadHomepage](https://github.com/RayeRen/acad-homepage.github.io)（源自 [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes)）二次开发，感谢原作者。

## 开源协议

本项目采用 [MIT 许可证](LICENSE) 开源。
