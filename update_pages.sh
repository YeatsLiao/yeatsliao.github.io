# 1. Update _pages/about.md
sed -i 's/<span class=.anchor. id=.about-me.><\/span>/<span class="anchor" id="about-me"><\/span>\n\n<header>\n  <h1 class="page__title">About Me<\/h1>\n<\/header>\n/' _pages/about.md

# 2. Update _pages/blog.md
cat << 'BLOG' > _pages/blog.md
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
BLOG

# 3. Update _layouts/post.html
cat << 'POST' > _layouts/post.html
---
layout: default
author_profile: true
---

<article class="page" itemscope itemtype="http://schema.org/CreativeWork">
  <div class="page__inner-wrap">
    <header>
      <h1 class="page__title" itemprop="headline">{{ page.title | escape }}</h1>
      {% if page.date %}
        <p class="page__meta" style="color: #888; margin-top: -10px; margin-bottom: 20px;">
          <i class="far fa-clock" aria-hidden="true"></i> <time datetime="{{ page.date | date_to_xmlschema }}">{{ page.date | date: "%B %d, %Y" }}</time>
        </p>
      {% endif %}
    </header>

    <section class="page__content" itemprop="text" style="line-height: 1.8; font-size: 1.05em; color: #333;">
      {{ content }}
    </section>

    <footer class="page__meta" style="margin-top: 3em; padding-top: 1.5em; border-top: 1px solid #eaeaea;">
      <!-- 分页与返回导航 -->
      <nav class="pagination" style="display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 10px;">
        
        <div style="flex: 1; text-align: left; min-width: 100px;">
        {% if page.previous %}
          <a href="{{ page.previous.url | relative_url }}" class="pagination--pager" title="{{ page.previous.title | escape }}" style="text-decoration: none; padding: 0.6em 1.2em; border: 1px solid #ddd; border-radius: 5px; display: inline-block; background-color: #fff; color: #007bff; transition: all 0.2s; font-size: 0.95em;" onmouseover="this.style.backgroundColor='#f0f8ff'; this.style.borderColor='#007bff';" onmouseout="this.style.backgroundColor='#fff'; this.style.borderColor='#ddd';">&laquo; 上一篇</a>
        {% endif %}
        </div>

        <div style="flex: 2; text-align: center; min-width: 200px;">
          <a href="javascript:history.back()" style="text-decoration: none; padding: 0.6em 1.2em; border: 1px solid #ddd; border-radius: 5px; display: inline-block; background-color: #fff; color: #555; transition: all 0.2s; font-size: 0.95em; margin-right: 10px;" onmouseover="this.style.backgroundColor='#f9f9f9'; this.style.borderColor='#ccc';" onmouseout="this.style.backgroundColor='#fff'; this.style.borderColor='#ddd';">返回上一页</a>
          
          <a href="{{ '/blog/' | relative_url }}" style="text-decoration: none; padding: 0.6em 1.2em; border: 1px solid #ddd; border-radius: 5px; display: inline-block; background-color: #fff; color: #555; transition: all 0.2s; font-size: 0.95em;" onmouseover="this.style.backgroundColor='#f9f9f9'; this.style.borderColor='#ccc';" onmouseout="this.style.backgroundColor='#fff'; this.style.borderColor='#ddd';">博客列表</a>
        </div>

        <div style="flex: 1; text-align: right; min-width: 100px;">
        {% if page.next %}
          <a href="{{ page.next.url | relative_url }}" class="pagination--pager" title="{{ page.next.title | escape }}" style="text-decoration: none; padding: 0.6em 1.2em; border: 1px solid #ddd; border-radius: 5px; display: inline-block; background-color: #fff; color: #007bff; transition: all 0.2s; font-size: 0.95em;" onmouseover="this.style.backgroundColor='#f0f8ff'; this.style.borderColor='#007bff';" onmouseout="this.style.backgroundColor='#fff'; this.style.borderColor='#ddd';">下一篇 &raquo;</a>
        {% endif %}
        </div>
        
      </nav>
    </footer>
  </div>
</article>
POST
