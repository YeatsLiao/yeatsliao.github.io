---
layout: default
permalink: /projects/
title: "Projects"
author_profile: true
---

<style>
  .project-section-title {
    margin: 1.5em 0 0.8em;
    padding-left: 12px;
    border-left: 4px solid #007bff;
    font-size: 1.3em;
    font-weight: 600;
  }
  /* 精选项目：左图右文大卡 */
  .featured-card {
    display: flex;
    background: #fff;
    border: 1px solid #f1f3f5;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    transition: all 0.3s ease;
    margin-bottom: 20px;
  }
  .featured-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.06);
    border-color: #e2e8f0;
  }
  .featured-card .featured-cover {
    flex: 0 0 40%;
    display: block;
  }
  .featured-card .featured-cover img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    aspect-ratio: 16 / 9;
  }
  .featured-card .featured-body {
    flex: 1;
    padding: 1.4em 1.6em;
    display: flex;
    flex-direction: column;
  }
  @media (max-width: 768px) {
    .featured-card { flex-direction: column; }
    .featured-card .featured-cover { flex: none; }
  }
  .featured-card h3 {
    margin: 0 0 0.5em 0;
    font-size: 1.2em;
  }
  .featured-card h3 a { color: #212529; text-decoration: none; }
  .featured-card h3 a:hover { color: #007bff; }
  /* 分类网格小卡 */
  .project-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
  }
  @media (max-width: 768px) {
    .project-grid { grid-template-columns: 1fr; }
  }
  .project-card {
    display: flex;
    flex-direction: column;
    background: #fff;
    border: 1px solid #f1f3f5;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    transition: all 0.3s ease;
  }
  .project-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.06);
    border-color: #e2e8f0;
  }
  .project-card .project-cover {
    display: block;
    width: 100%;
    aspect-ratio: 2 / 1;
    overflow: hidden;
  }
  .project-card .project-cover img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  .project-card .project-body {
    flex: 1;
    display: flex;
    flex-direction: column;
    padding: 1.2em 1.4em;
  }
  .project-card h3 {
    margin: 0 0 0.5em 0;
    font-size: 1.1em;
  }
  .project-card h3 a { color: #212529; text-decoration: none; }
  .project-card h3 a:hover { color: #007bff; }
  .project-desc {
    flex: 1;
    font-size: 0.92em;
    color: #495057;
    line-height: 1.6;
    margin-bottom: 1em;
  }
  .project-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
  }
  .project-tags span {
    font-size: 0.75em;
    padding: 2px 10px;
    border-radius: 20px;
    background: #f1f3f5;
    color: #495057;
  }
</style>

<header>
  <h1 class="page__title">Projects</h1>
</header>

<p>
  <span class="i18n-zh">精选开源项目，完整列表见 <a href="https://github.com/YeatsLiao?tab=repositories">GitHub</a>。</span>
  <span class="i18n-en">Selected open source projects. See <a href="https://github.com/YeatsLiao?tab=repositories">GitHub</a> for the full list.</span>
</p>

{% comment %} 封面：优先 image 字段，其次 GitHub OpenGraph 自动生成图 {% endcomment %}

<h2 class="project-section-title"><span class="i18n-zh">精选项目</span><span class="i18n-en">Featured</span></h2>

{% for category in site.data.projects.categories %}
{% for project in category.items %}
{% if project.featured %}
<div class="featured-card">
  {% capture cover_url %}{% if project.image %}{{ project.image | relative_url }}{% elsif project.repo %}https://opengraph.githubassets.com/1/{{ project.repo }}{% endif %}{% endcapture %}
  {% if cover_url != "" %}
  <a class="featured-cover" href="{{ project.link }}">
    <img src="{{ cover_url }}" alt="{{ project.name }}" loading="lazy">
  </a>
  {% endif %}
  <div class="featured-body">
    <h3><a href="{{ project.link }}">{{ project.name }}</a></h3>
    <div class="project-desc"><span class="i18n-zh">{{ project.desc.zh }}</span><span class="i18n-en">{{ project.desc.en }}</span></div>
    <div class="project-tags">{% for tag in project.tags %}<span>{{ tag }}</span>{% endfor %}</div>
  </div>
</div>
{% endif %}
{% endfor %}
{% endfor %}

{% for category in site.data.projects.categories %}
<h2 class="project-section-title" style="border-left-color: {{ category.color | default: '#007bff' }};"><span class="i18n-zh">{{ category.name.zh }}</span><span class="i18n-en">{{ category.name.en }}</span></h2>

<div class="project-grid">
  {% for project in category.items %}
  {% unless project.featured %}
  <div class="project-card">
    {% capture cover_url %}{% if project.image %}{{ project.image | relative_url }}{% elsif project.repo %}https://opengraph.githubassets.com/1/{{ project.repo }}{% endif %}{% endcapture %}
    {% if cover_url != "" %}
    <a class="project-cover" href="{{ project.link }}">
      <img src="{{ cover_url }}" alt="{{ project.name }}" loading="lazy">
    </a>
    {% endif %}
    <div class="project-body">
      <h3><a href="{{ project.link }}">{{ project.name }}</a></h3>
      <div class="project-desc"><span class="i18n-zh">{{ project.desc.zh }}</span><span class="i18n-en">{{ project.desc.en }}</span></div>
      <div class="project-tags">{% for tag in project.tags %}<span>{{ tag }}</span>{% endfor %}</div>
    </div>
  </div>
  {% endunless %}
  {% endfor %}
</div>
{% endfor %}
