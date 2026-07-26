---
layout: default
permalink: /projects/
title: "Projects"
author_profile: true
---

<style>
  .project-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
    margin-top: 1.5em;
  }
  @media (max-width: 768px) {
    .project-grid { grid-template-columns: 1fr; }
  }
  .project-card {
    display: flex;
    flex-direction: column;
    padding: 1.5em;
    background: #fff;
    border: 1px solid #f1f3f5;
    border-radius: 12px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    transition: all 0.3s ease;
  }
  .project-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.06);
    border-color: #e2e8f0;
  }
  .project-card h3 {
    margin: 0 0 0.5em 0;
    font-size: 1.15em;
  }
  .project-card h3 a {
    color: #212529;
    text-decoration: none;
  }
  .project-card h3 a:hover { color: #007bff; }
  .project-card .project-cover {
    width: 100%;
    aspect-ratio: 16 / 9;
    object-fit: cover;
    border-radius: 8px;
    margin-bottom: 1em;
  }
  .project-card .project-desc {
    flex: 1;
    font-size: 0.92em;
    color: #495057;
    line-height: 1.6;
    margin-bottom: 1em;
  }
  .project-card .project-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
  }
  .project-card .project-tags span {
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

{% for category in site.data.projects.categories %}
<h2 style="margin-top: 1.5em;"><span class="i18n-zh">{{ category.name.zh }}</span><span class="i18n-en">{{ category.name.en }}</span></h2>

<div class="project-grid">
  {% for project in category.items %}
  <div class="project-card">
    {% if project.image %}<img class="project-cover" src="{{ project.image | relative_url }}" alt="{{ project.name }}" loading="lazy">{% endif %}
    <h3><a href="{{ project.link }}">{{ project.name }}</a></h3>
    <div class="project-desc"><span class="i18n-zh">{{ project.desc.zh }}</span><span class="i18n-en">{{ project.desc.en }}</span></div>
    <div class="project-tags">{% for tag in project.tags %}<span>{{ tag }}</span>{% endfor %}</div>
  </div>
  {% endfor %}
</div>
{% endfor %}
