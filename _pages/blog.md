---
layout: default
permalink: /blog/
title: "博客"
author_profile: true
---

<style>
  /* 年份导航条（与活动页同款） */
  .year-nav {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin: 1em 0 0.5em;
  }
  .year-nav a {
    display: inline-block;
    padding: 3px 12px;
    border-radius: 20px;
    border: 1px solid #e9ecef;
    background: #fff;
    color: #495057;
    font-size: 0.85em;
    text-decoration: none !important;
  }
  .year-nav a:hover {
    border-color: #007bff;
    color: #007bff;
  }
  .year-nav a .year-count {
    color: #adb5bd;
    font-size: 0.85em;
    margin-left: 4px;
  }
  .year-heading {
    margin: 1.6em 0 0.2em;
    color: #007bff;
    font-size: 1.2em;
    font-weight: 600;
    border-bottom: 1px solid #e9ecef;
    padding-bottom: 0.3em;
  }
  /* 紧凑文章行 */
  .post-item {
    display: flex;
    gap: 14px;
    padding: 0.8em 0;
    border-bottom: 1px solid #f1f3f5;
  }
  .post-item:last-child { border-bottom: none; }
  .cal-block {
    flex: 0 0 46px;
    align-self: flex-start;
    border: 1px solid #e9ecef;
    border-radius: 6px;
    overflow: hidden;
    text-align: center;
    background: #fff;
  }
  .cal-block .cal-month {
    display: block;
    background: #007bff;
    color: #fff;
    font-size: 0.65em;
    font-weight: 600;
    padding: 1px 0;
  }
  .cal-block .cal-day {
    display: block;
    font-size: 1.1em;
    font-weight: 700;
    color: #212529;
    padding: 2px 0;
    line-height: 1.2;
  }
  .post-main { flex: 1; min-width: 0; }
  .post-title {
    margin: 0 0 0.2em 0;
    font-size: 1em;
    font-weight: 600;
  }
  .post-title a { color: #212529; text-decoration: none; }
  .post-title a:hover { color: #007bff; }
  .post-excerpt {
    font-size: 0.85em;
    color: #6c757d;
    line-height: 1.6;
    margin: 0;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
  }
  /* CSDN 精选旧文 */
  .featured-box {
    border: 1px solid #e9ecef;
    border-radius: 8px;
    padding: 0.9em 1.1em;
    margin: 1.2em 0 0.4em;
    background: #fafbfc;
  }
  .featured-box h2 {
    margin: 0 0 0.5em;
    font-size: 0.95em;
    font-weight: 600;
    color: #495057;
  }
  .featured-box h2 a { color: #007bff; text-decoration: none; font-weight: 400; font-size: 0.85em; }
  .featured-list {
    list-style: none;
    margin: 0;
    padding: 0;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2px 18px;
  }
  .featured-list li {
    display: flex;
    justify-content: space-between;
    gap: 8px;
    padding: 3px 0;
    font-size: 0.85em;
    min-width: 0;
  }
  .featured-list a {
    color: #212529;
    text-decoration: none;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .featured-list a:hover { color: #007bff; }
  .featured-views { color: #adb5bd; flex-shrink: 0; }
  @media (max-width: 600px) { .featured-list { grid-template-columns: 1fr; } }
</style>

<header>
  <h1 class="page__title">博客</h1>
</header>

{% if site.data.featured_posts.posts and site.data.featured_posts.posts.size > 0 %}
<div class="featured-box">
  <h2><span class="i18n-zh">精选旧文 · CSDN</span><span class="i18n-en">Featured on CSDN</span>
    <a href="https://yeatsliao.blog.csdn.net/" target="_blank" rel="noopener"><span class="i18n-zh">更多 →</span><span class="i18n-en">More →</span></a>
  </h2>
  <ul class="featured-list">
    {% for fp in site.data.featured_posts.posts %}
    <li><a href="{{ fp.link }}" target="_blank" rel="noopener">{{ fp.title }}</a><span class="featured-views">{{ fp.views }} <span class="i18n-zh">阅读</span><span class="i18n-en">views</span></span></li>
    {% endfor %}
  </ul>
</div>
{% endif %}

{% assign postsByYear = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}

<div class="year-nav">
  {% for year in postsByYear %}
  <a href="#{{ year.name }}">{{ year.name }}<span class="year-count">{{ year.items | size }}</span></a>
  {% endfor %}
</div>

{% for year in postsByYear %}
<h2 id="{{ year.name }}" class="year-heading">{{ year.name }}</h2>

{% for post in year.items %}
<div class="post-item">
  <time class="cal-block" datetime="{{ post.date | date_to_xmlschema }}">
    <span class="cal-month">{{ post.date | date: "%-m月" }}</span>
    <span class="cal-day">{{ post.date | date: "%-d" }}</span>
  </time>
  <div class="post-main">
    <h3 class="post-title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <p class="post-excerpt">{{ post.excerpt | markdownify | strip_html | truncate: 120 }}</p>
  </div>
</div>
{% endfor %}
{% endfor %}
