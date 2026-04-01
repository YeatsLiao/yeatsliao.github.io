cat << 'BLOG' > _pages/blog.md
---
layout: default
permalink: /blog/
title: "Blog"
author_profile: true
---

<div class="archive" style="margin-top: 1em;">
  <div class="timeline" style="position: relative; padding-left: 20px;">
    <!-- 贯穿全剧的时间轴主线 -->
    <div style="position: absolute; left: 6px; top: 0; bottom: 0; width: 2px; background-color: #e9ecef; z-index: 1;"></div>
    
    {% assign postsByYear = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
    {% for year in postsByYear %}
      <div class="timeline-year" style="position: relative; margin-top: 2em; margin-bottom: 1em;">
        <!-- 年份圆点 -->
        <span style="position: absolute; left: -19px; top: 8px; width: 12px; height: 12px; background-color: #fff; border: 3px solid #007bff; border-radius: 50%; z-index: 2;"></span>
        <h2 id="{{ year.name }}" class="archive__subtitle" style="margin: 0; color: #007bff; font-size: 1.4em; font-weight: 600; padding-left: 10px;">{{ year.name }}</h2>
      </div>
      
      <div class="timeline-items" style="padding-left: 10px; padding-bottom: 10px;">
      {% for post in year.items %}
        <article class="archive__item" itemscope itemtype="http://schema.org/CreativeWork" style="margin-bottom: 2em; position: relative; background: #fff; padding: 1.5em; border-radius: 12px; border: 1px solid #f1f3f5; box-shadow: 0 2px 8px rgba(0,0,0,0.02); transition: all 0.3s ease;" onmouseover="this.style.transform='translateY(-3px)'; this.style.boxShadow='0 8px 16px rgba(0,0,0,0.06)'; this.style.borderColor='#e2e8f0';" onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='0 2px 8px rgba(0,0,0,0.02)'; this.style.borderColor='#f1f3f5';">
          
          <!-- 文章时间点 -->
          <span style="position: absolute; left: -34px; top: 28px; width: 8px; height: 8px; background-color: #adb5bd; border-radius: 50%; z-index: 2; transition: background-color 0.3s ease;" onmouseover="this.style.backgroundColor='#007bff';" onmouseout="this.style.backgroundColor='#adb5bd';"></span>
          
          <h3 class="archive__item-title" itemprop="headline" style="margin: 0 0 0.4em 0; font-size: 1.25em; font-weight: 600;">
            <a href="{{ post.url | relative_url }}" style="text-decoration: none; color: #212529; transition: color 0.2s;" onmouseover="this.style.color='#007bff';" onmouseout="this.style.color='#212529';">{{ post.title }}</a>
          </h3>
          <p class="page__meta" style="color: #6c757d; font-size: 0.85em; margin: 0 0 0.8em 0; display: flex; align-items: center; gap: 5px;">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
            <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d" }}</time>
          </p>
          <div class="archive__item-excerpt" itemprop="description" style="font-size: 0.95em; color: #495057; line-height: 1.6; margin: 0;">
            {{ post.excerpt | markdownify | strip_html | truncate: 160 }}
          </div>
        </article>
      {% endfor %}
      </div>
    {% endfor %}
  </div>
</div>
BLOG
