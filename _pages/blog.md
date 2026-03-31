---
layout: default
permalink: /blog/
title: "Blog"
author_profile: true
---

<div class="archive" style="margin-top: 2em;">
  {% assign postsByYear = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
  {% for year in postsByYear %}
    <h2 id="{{ year.name }}" class="archive__subtitle" style="margin-top: 1.5em; border-bottom: 2px solid #eee; padding-bottom: 0.3em; color: #333; font-size: 1.5em;">{{ year.name }}</h2>
    <div class="list__item" style="margin-left: 10px; border-left: 2px solid #007bff; padding-left: 20px; padding-top: 10px; padding-bottom: 10px;">
    {% for post in year.items %}
      <article class="archive__item" itemscope itemtype="http://schema.org/CreativeWork" style="margin-bottom: 1.5em; position: relative;">
        <!-- 时间轴的圆点 -->
        <span style="position: absolute; left: -26px; top: 6px; width: 10px; height: 10px; background-color: #007bff; border-radius: 50%; border: 2px solid #fff;"></span>
        
        <h3 class="archive__item-title" itemprop="headline" style="margin: 0 0 0.2em 0; font-size: 1.2em;">
          <a href="{{ post.url | relative_url }}" style="text-decoration: none; color: #2c3e50;">{{ post.title }}</a>
        </h3>
        <p class="page__meta" style="color: #888; font-size: 0.9em; margin: 0 0 0.5em 0;">
          <i class="far fa-clock" aria-hidden="true"></i> <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%Y-%m-%d" }}</time>
        </p>
        <div class="archive__item-excerpt" itemprop="description" style="font-size: 0.95em; color: #555; line-height: 1.5;">
          {{ post.excerpt | markdownify | strip_html | truncate: 160 }}
        </div>
      </article>
    {% endfor %}
    </div>
  {% endfor %}
</div>
