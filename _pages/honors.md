---
layout: default
permalink: /honors/
title: "Honors"
author_profile: true
---

<style>
  .honor-section-title {
    margin: 1.5em 0 0.8em;
    padding-left: 12px;
    border-left: 4px solid #007bff;
    font-size: 1.3em;
    font-weight: 600;
  }
  /* 社区荣誉徽章墙 */
  .badge-wall {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 16px;
  }
  @media (max-width: 768px) {
    .badge-wall { grid-template-columns: 1fr; }
  }
  .badge-card {
    display: block;
    padding: 1.2em 1.4em;
    background: #fff;
    border: 1px solid #f1f3f5;
    border-left-width: 4px;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    text-decoration: none !important;
    transition: all 0.3s ease;
  }
  .badge-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.06);
  }
  .badge-card .badge-platform {
    font-weight: 700;
    font-size: 1.05em;
    margin-bottom: 0.3em;
  }
  .badge-card .badge-titles {
    font-size: 0.88em;
    color: #495057;
    line-height: 1.6;
  }
  .badge-card .badge-verify {
    font-size: 0.75em;
    color: #adb5bd;
    margin-top: 0.5em;
  }
  /* 证书照片墙 */
  .cert-wall {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 16px;
  }
  @media (max-width: 768px) {
    .cert-wall { grid-template-columns: 1fr; }
  }
  .cert-card {
    display: flex;
    flex-direction: column;
    background: #fff;
    border: 1px solid #f1f3f5;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    transition: all 0.3s ease;
  }
  .cert-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.06);
  }
  .cert-card .cert-photo {
    display: block;
    aspect-ratio: 4 / 3;
    overflow: hidden;
  }
  .cert-card .cert-photo img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  .cert-card .cert-placeholder {
    aspect-ratio: 4 / 3;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1em;
    text-align: center;
    font-weight: 600;
    font-size: 0.95em;
    color: #fff;
    line-height: 1.5;
  }
  .cert-card .cert-info {
    padding: 0.8em 1em;
    font-size: 0.82em;
    color: #6c757d;
    display: flex;
    justify-content: space-between;
    gap: 8px;
    flex-wrap: wrap;
  }
  .cert-card .cert-info .cert-name { color: #212529; font-weight: 600; }
</style>

<header>
  <h1 class="page__title">Honors</h1>
</header>

<p>
  <span class="i18n-zh">社区荣誉与证书墙，徽章卡片可点击跳转平台主页核验。</span>
  <span class="i18n-en">Community honors and certificate wall. Badge cards link to platform profiles for verification.</span>
</p>

<h2 class="honor-section-title"><span class="i18n-zh">社区荣誉</span><span class="i18n-en">Community Honors</span></h2>

<div class="badge-wall">
  {% for honor in site.data.honors.community %}
  <a class="badge-card" {% if honor.link %}href="{{ honor.link }}"{% endif %} style="border-left-color: {{ honor.color }};">
    <div class="badge-platform" style="color: {{ honor.color }};"><span class="i18n-zh">{{ honor.platform.zh }}</span><span class="i18n-en">{{ honor.platform.en }}</span></div>
    <div class="badge-titles"><span class="i18n-zh">{{ honor.titles.zh }}</span><span class="i18n-en">{{ honor.titles.en }}</span></div>
    {% if honor.link %}<div class="badge-verify"><span class="i18n-zh">点击核验 →</span><span class="i18n-en">Verify →</span></div>{% endif %}
  </a>
  {% endfor %}
</div>

<h2 class="honor-section-title"><span class="i18n-zh">证书与奖项</span><span class="i18n-en">Certificates & Awards</span></h2>

<div class="cert-wall">
  {% for award in site.data.honors.awards %}
  <div class="cert-card">
    {% if award.image %}
    <a class="cert-photo image-popup" href="{{ award.image | relative_url }}" title="{{ award.name.zh }}">
      <img src="{{ award.image | relative_url }}" alt="{{ award.name.zh }}" loading="lazy">
    </a>
    {% else %}
    <div class="cert-placeholder" style="background: linear-gradient(135deg, {{ award.color }}cc, {{ award.color }});">
      <span><span class="i18n-zh">{{ award.name.zh }}</span><span class="i18n-en">{{ award.name.en }}</span></span>
    </div>
    {% endif %}
    <div class="cert-info">
      <span class="cert-name"><span class="i18n-zh">{{ award.issuer.zh }}</span><span class="i18n-en">{{ award.issuer.en }}</span></span>
      <span>{{ award.period }}</span>
    </div>
  </div>
  {% endfor %}
</div>
