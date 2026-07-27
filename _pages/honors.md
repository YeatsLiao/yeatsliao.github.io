---
layout: default
permalink: /honors/
title: "荣誉"
author_profile: true
---

<style>
  /* 证书墙：3 列灰白卡片 */
  .cert-wall {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 16px;
    margin-top: 1em;
  }
  @media (max-width: 768px) {
    .cert-wall { grid-template-columns: 1fr; }
  }
  .cert-card {
    display: flex;
    flex-direction: column;
    background: #fff;
    border: 1px solid #e9ecef;
    border-radius: 8px;
    overflow: hidden;
  }
  .cert-card .cert-photo {
    display: block;
    aspect-ratio: 4 / 3;
    overflow: hidden;
    background: #f8f9fa;
  }
  .cert-card .cert-photo img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  .cert-card .cert-info {
    padding: 0.8em 1em;
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    gap: 4px;
  }
  .cert-card .cert-name {
    font-size: 0.9em;
    font-weight: 600;
    color: #212529;
    line-height: 1.5;
  }
  .cert-card .cert-period {
    font-size: 0.8em;
    color: #868e96;
  }
  .cert-group-heading {
    font-size: 1.05em;
    font-weight: 600;
    color: #007bff;
    margin: 1.6em 0 0.2em;
    padding-bottom: 0.3em;
    border-bottom: 1px solid #e9ecef;
  }
</style>

<header>
  <h1 class="page__title">荣誉</h1>
</header>

# 社区荣誉

<ul>
{% for honor in site.data.honors.community %}
  <li><span class="i18n-zh">{{ honor.zh }}</span><span class="i18n-en">{{ honor.en }}</span></li>
{% endfor %}
</ul>

# 证书与奖项

{% for group in site.data.honors.award_groups %}
<h3 class="cert-group-heading"><span class="i18n-zh">{{ group.name.zh }}</span><span class="i18n-en">{{ group.name.en }}</span></h3>
<div class="cert-wall">
  {% for award in group.items %}
  <div class="cert-card">
    {% if award.image %}
    <a class="cert-photo image-popup" href="{{ award.image | relative_url }}" title="{{ award.name.zh }}">
      <img src="{{ award.image | relative_url }}" alt="{{ award.name.zh }}" loading="lazy">
    </a>
    {% endif %}
    <div class="cert-info">
      <span class="cert-name"><span class="i18n-zh">{{ award.name.zh }}</span><span class="i18n-en">{{ award.name.en }}</span></span>
      <span class="cert-period">{{ award.period }}</span>
    </div>
  </div>
  {% endfor %}
</div>
{% endfor %}
