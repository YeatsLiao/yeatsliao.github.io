---
layout: default
permalink: /activities/
title: "活动"
author_profile: true
---

<style>
  /* 年份导航条 */
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
  /* 紧凑活动行 */
  .activity-item {
    display: flex;
    gap: 14px;
    padding: 0.8em 0;
    border-bottom: 1px solid #f1f3f5;
  }
  .activity-item:last-child { border-bottom: none; }
  /* 日历撕页日期块 */
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
  .activity-main { flex: 1; min-width: 0; }
  .activity-title {
    margin: 0 0 0.2em 0;
    font-size: 1em;
    font-weight: 600;
    display: flex;
    align-items: center;
    gap: 8px;
    flex-wrap: wrap;
  }
  .activity-title a { color: #212529; text-decoration: none; }
  .activity-title a:hover { color: #007bff; }
  .activity-role {
    font-size: 0.7em;
    font-weight: 500;
    padding: 1px 10px;
    border-radius: 20px;
    background: #e7f1ff;
    color: #007bff;
    white-space: nowrap;
  }
  .activity-desc {
    font-size: 0.85em;
    color: #6c757d;
    line-height: 1.6;
    margin: 0;
  }
  .activity-photo {
    max-width: 280px;
    border-radius: 6px;
    margin-top: 0.5em;
    display: block;
  }
</style>

<header>
  <h1 class="page__title">活动</h1>
</header>

<p>
  <span class="i18n-zh">社区活动、内容创作与获奖记录时间线。</span>
  <span class="i18n-en">A timeline of community activities, content creation, and awards.</span>
</p>

{% assign sorted_activities = site.data.activities | sort: "date" | reverse %}
{% assign activitiesByYear = sorted_activities | group_by_exp: "item", "item.date | date: '%Y'" %}

<div class="year-nav">
  {% for year in activitiesByYear %}
  <a href="#{{ year.name }}">{{ year.name }}<span class="year-count">{{ year.items | size }}</span></a>
  {% endfor %}
</div>

{% for year in activitiesByYear %}
<h2 id="{{ year.name }}" class="year-heading">{{ year.name }}</h2>

{% for activity in year.items %}
<div class="activity-item">
  <time class="cal-block" datetime="{{ activity.date }}">
    <span class="cal-month"><span class="i18n-zh">{{ activity.date | date: "%-m月" }}</span><span class="i18n-en">{{ activity.date | date: "%b" }}</span></span>
    <span class="cal-day">{{ activity.date | date: "%-d" }}</span>
  </time>
  <div class="activity-main">
    <h3 class="activity-title">
      {% if activity.link %}
        <a href="{{ activity.link }}"><span class="i18n-zh">{{ activity.title.zh }}</span><span class="i18n-en">{{ activity.title.en }}</span></a>
      {% else %}
        <span><span class="i18n-zh">{{ activity.title.zh }}</span><span class="i18n-en">{{ activity.title.en }}</span></span>
      {% endif %}
      {% if activity.role %}
        <span class="activity-role"><span class="i18n-zh">{{ activity.role.zh }}</span><span class="i18n-en">{{ activity.role.en }}</span></span>
      {% endif %}
    </h3>
    {% if activity.desc %}
    <p class="activity-desc"><span class="i18n-zh">{{ activity.desc.zh }}</span><span class="i18n-en">{{ activity.desc.en }}</span></p>
    {% endif %}
    {% if activity.image %}
    <img class="activity-photo" src="{{ activity.image | relative_url }}" alt="{{ activity.title.zh }}" loading="lazy">
    {% endif %}
  </div>
</div>
{% endfor %}
{% endfor %}
