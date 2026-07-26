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
    padding: 4px 14px;
    border-radius: 20px;
    border: 1px solid #e9ecef;
    background: #fff;
    color: #495057;
    font-size: 0.85em;
    font-weight: 500;
    text-decoration: none !important;
    transition: all 0.2s ease;
  }
  .year-nav a:hover {
    border-color: #28a745;
    color: #28a745;
  }
  .year-nav a .year-count {
    color: #adb5bd;
    font-size: 0.85em;
    margin-left: 4px;
  }
  /* 日历撕页日期块 */
  .cal-block {
    flex: 0 0 56px;
    align-self: flex-start;
    border: 1px solid #e9ecef;
    border-radius: 8px;
    overflow: hidden;
    text-align: center;
    background: #fff;
  }
  .cal-block .cal-month {
    display: block;
    background: #28a745;
    color: #fff;
    font-size: 0.7em;
    font-weight: 600;
    padding: 2px 0;
    letter-spacing: 0.5px;
  }
  .cal-block .cal-day {
    display: block;
    font-size: 1.3em;
    font-weight: 700;
    color: #212529;
    padding: 4px 0;
    line-height: 1.2;
  }
  .activity-row {
    display: flex;
    gap: 16px;
  }
  .activity-row .activity-main { flex: 1; min-width: 0; }
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

<div class="archive" style="margin-top: 1em;">
  <div class="timeline" style="position: relative; padding-left: 20px;">
    <!-- 时间轴主线 -->
    <div style="position: absolute; left: 6px; top: 0; bottom: 0; width: 2px; background-color: #e9ecef; z-index: 1;"></div>

    {% for year in activitiesByYear %}
      <div class="timeline-year" style="position: relative; margin-top: 2em; margin-bottom: 1em;">
        <!-- 年份圆点 -->
        <span style="position: absolute; left: -19px; top: 8px; width: 12px; height: 12px; background-color: #fff; border: 3px solid #28a745; border-radius: 50%; z-index: 2;"></span>
        <h2 id="{{ year.name }}" class="archive__subtitle" style="margin: 0; color: #28a745; font-size: 1.4em; font-weight: 600; padding-left: 10px;">{{ year.name }}</h2>
      </div>

      <div class="timeline-items" style="padding-left: 10px; padding-bottom: 10px;">
      {% for activity in year.items %}
        <article class="archive__item" style="margin-bottom: 2em; position: relative; background: #fff; padding: 1.5em; border-radius: 12px; border: 1px solid #f1f3f5; box-shadow: 0 2px 8px rgba(0,0,0,0.02); transition: all 0.3s ease;" onmouseover="this.style.transform='translateY(-3px)'; this.style.boxShadow='0 8px 16px rgba(0,0,0,0.06)'; this.style.borderColor='#e2e8f0';" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 2px 8px rgba(0,0,0,0.02)'; this.style.borderColor='#f1f3f5';">

          <!-- 活动时间点 -->
          <span style="position: absolute; left: -34px; top: 28px; width: 8px; height: 8px; background-color: #adb5bd; border-radius: 50%; z-index: 2;"></span>

          <div class="activity-row">
            <!-- 日历撕页日期块 -->
            <time class="cal-block" datetime="{{ activity.date }}">
              <span class="cal-month"><span class="i18n-zh">{{ activity.date | date: "%-m月" }}</span><span class="i18n-en">{{ activity.date | date: "%b" }}</span></span>
              <span class="cal-day">{{ activity.date | date: "%-d" }}</span>
            </time>

            <div class="activity-main">
              <h3 class="archive__item-title" style="margin: 0 0 0.6em 0; font-size: 1.2em; font-weight: 600; display: flex; align-items: center; gap: 10px; flex-wrap: wrap;">
                {% if activity.link %}
                  <a href="{{ activity.link }}" style="text-decoration: none; color: #212529;" onmouseover="this.style.color='#28a745';" onmouseout="this.style.color='#212529';"><span class="i18n-zh">{{ activity.title.zh }}</span><span class="i18n-en">{{ activity.title.en }}</span></a>
                {% else %}
                  <span style="color: #212529;"><span class="i18n-zh">{{ activity.title.zh }}</span><span class="i18n-en">{{ activity.title.en }}</span></span>
                {% endif %}
                {% if activity.role %}
                  <span style="font-size: 0.65em; font-weight: 500; padding: 2px 12px; border-radius: 20px; background: #e7f5ec; color: #28a745;"><span class="i18n-zh">{{ activity.role.zh }}</span><span class="i18n-en">{{ activity.role.en }}</span></span>
                {% endif %}
              </h3>
              {% if activity.desc %}
              <div class="archive__item-excerpt" style="font-size: 0.95em; color: #495057; line-height: 1.6; margin: 0;"><span class="i18n-zh">{{ activity.desc.zh }}</span><span class="i18n-en">{{ activity.desc.en }}</span></div>
              {% endif %}
              {% if activity.image %}
              <div style="margin-top: 1em;">
                <img src="{{ activity.image | relative_url }}" alt="{{ activity.title.zh }}" loading="lazy" style="max-width: 100%; border-radius: 8px;">
              </div>
              {% endif %}
            </div>
          </div>
        </article>
      {% endfor %}
      </div>
    {% endfor %}
  </div>
</div>
