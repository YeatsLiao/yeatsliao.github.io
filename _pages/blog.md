---
layout: default
permalink: /blog/
title: "Blog"
author_profile: true
---

<header>
  <h1 class="page__title">Blog</h1>
</header>

<div class="entries-list">
  {% for post in site.posts %}
    <article class="archive__item" itemscope itemtype="http://schema.org/CreativeWork">
      <h2 class="archive__item-title" itemprop="headline">
        <a href="{{ post.url | relative_url }}" rel="permalink">{{ post.title }}</a>
      </h2>
      <p class="page__meta" style="color: #888; font-size: 0.9em;">
        <i class="far fa-clock" aria-hidden="true"></i> {{ post.date | date: "%B %d, %Y" }}
      </p>
      <div class="archive__item-excerpt" itemprop="description">
        {{ post.excerpt | markdownify | strip_html | truncate: 160 }}
      </div>
    </article>
  {% endfor %}
</div>
