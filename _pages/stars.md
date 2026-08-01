---
layout: default
permalink: /stars/
title: "Stars"
author_profile: true
---

<style>
  .stars-header {
    display: flex;
    align-items: baseline;
    gap: 12px;
    margin-bottom: 0.5em;
  }
  .stars-header .count {
    font-size: 0.85em;
    color: #6c757d;
    font-weight: 400;
  }
  .star-section-title {
    margin: 1.8em 0 0.8em;
    padding-left: 12px;
    border-left: 4px solid #f0ad4e;
    font-size: 1.2em;
    font-weight: 600;
  }
  .star-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
    gap: 12px;
  }
  @media (max-width: 768px) {
    .star-grid { grid-template-columns: 1fr; }
  }
  .star-card {
    display: flex;
    flex-direction: column;
    background: #fff;
    border: 1px solid #e9ecef;
    border-radius: 8px;
    padding: 0.9em 1em;
    transition: border-color 0.2s ease, box-shadow 0.2s ease;
  }
  .star-card:hover {
    border-color: #f0ad4e;
    box-shadow: 0 2px 8px rgba(240,173,78,0.08);
  }
  .star-card .star-name {
    margin: 0 0 0.3em 0;
    font-size: 0.92em;
    font-weight: 600;
  }
  .star-card .star-name a {
    color: #212529;
    text-decoration: none;
  }
  .star-card .star-name a:hover {
    color: #f0ad4e;
  }
  .star-card .star-desc {
    font-size: 0.82em;
    color: #495057;
    line-height: 1.5;
    flex: 1;
    margin-bottom: 0.5em;
  }
  .star-card .star-lang {
    font-size: 0.72em;
    color: #6c757d;
    display: inline-flex;
    align-items: center;
    gap: 4px;
  }
  .star-card .star-lang::before {
    content: "";
    display: inline-block;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: #6c757d;
  }
  .star-card .star-lang[data-lang="Java"]::before { background: #b07219; }
  .star-card .star-lang[data-lang="Python"]::before { background: #3572A5; }
  .star-card .star-lang[data-lang="TypeScript"]::before { background: #3178c6; }
  .star-card .star-lang[data-lang="JavaScript"]::before { background: #f1e05a; }
  .star-card .star-lang[data-lang="Go"]::before { background: #00ADD8; }
  .star-card .star-lang[data-lang="Vue"]::before { background: #41b883; }
  .star-card .star-lang[data-lang="C++"]::before { background: #f34b7d; }
  .star-card .star-lang[data-lang="C"]::before { background: #555555; }
  .star-card .star-lang[data-lang="C#"]::before { background: #178600; }
  .star-card .star-lang[data-lang="CSS"]::before { background: #563d7c; }
  .star-card .star-lang[data-lang="SCSS"]::before { background: #c6538c; }
  .stars-note {
    margin-top: 2em;
    padding: 0.8em 1em;
    background: #f8f9fa;
    border-radius: 6px;
    font-size: 0.82em;
    color: #6c757d;
  }
</style>

<header>
  <h1 class="page__title">
    <span class="i18n-zh">GitHub Stars</span>
    <span class="i18n-en">GitHub Stars</span>
  </h1>
</header>

<p>
  <span class="i18n-zh">我收藏的开源项目，按方向分类整理。完整列表见 <a href="https://github.com/YeatsLiao?tab=stars">GitHub Stars</a>。</span>
  <span class="i18n-en">Open source projects I've starred, organized by topic. Full list on <a href="https://github.com/YeatsLiao?tab=stars">GitHub Stars</a>.</span>
</p>

{% assign total = 0 %}
{% for category in site.data.stars.categories %}
{% assign total = total | plus: category.items.size %}
{% endfor %}
<p class="stars-header"><span class="count">{{ total }} repos / {{ site.data.stars.categories.size }} categories</span></p>

{% for category in site.data.stars.categories %}
<h2 class="star-section-title">
  <span class="i18n-zh">{{ category.name.zh }}</span>
  <span class="i18n-en">{{ category.name.en }}</span>
  <span class="count" style="font-size:0.7em; color:#adb5bd; margin-left:8px;">{{ category.items.size }}</span>
</h2>

<div class="star-grid">
  {% for item in category.items %}
  <div class="star-card">
    <p class="star-name"><a href="https://github.com/{{ item.name }}" target="_blank" rel="noopener">{{ item.name | split: "/" | last }}</a></p>
    <div class="star-desc">{{ item.desc }}</div>
    {% if item.lang %}
    <span class="star-lang" data-lang="{{ item.lang }}">{{ item.lang }}</span>
    {% endif %}
  </div>
  {% endfor %}
</div>
{% endfor %}

<div class="stars-note">
  <span class="i18n-zh">本页面由 GitHub Actions 每周自动同步</code></span>
  <span class="i18n-en">This page is auto-synced weekly via GitHub Actions. Data source: <code>GET /user/starred</code></span>
</div>
