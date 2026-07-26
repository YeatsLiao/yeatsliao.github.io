---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<span class="anchor" id="about-me"></span>

<header>
  <h1 class="page__title">About Me</h1>
</header>

{% for para in site.data.profile.intro %}
<p><span class="i18n-zh">{{ para.zh }}</span><span class="i18n-en">{{ para.en }}</span></p>
{% endfor %}

<p>
{% for badge in site.data.profile.badges %}
  {% if badge.link %}<a href="{{ badge.link }}"><img src="{{ badge.img }}" alt="{{ badge.alt }}"></a>{% else %}<img src="{{ badge.img }}" alt="{{ badge.alt }}">{% endif %}
{% endfor %}
</p>

# Technical Skills

**<span class="i18n-zh">{{ site.data.skills.headline.zh }}</span><span class="i18n-en">{{ site.data.skills.headline.en }}</span>**

<ul>
{% for group in site.data.skills.groups %}
  <li><strong><span class="i18n-zh">{{ group.name.zh }}</span><span class="i18n-en">{{ group.name.en }}</span></strong>：{{ group.items }}</li>
{% endfor %}
</ul>

# Honors and Awards

<p>
  <span class="i18n-zh">CSDN 博客专家 · 阿里云专家博主 · 华为云云享专家 · 腾讯云创作之星，另有云厂商认证与奖学金若干。</span>
  <span class="i18n-en">CSDN Blog Expert · Alibaba Cloud Expert Blogger · Huawei Cloud MVP · Tencent Cloud Creation Star, plus cloud vendor certifications and scholarships.</span>
  <a href="{{ '/honors/' | relative_url }}"><span class="i18n-zh">查看荣誉墙 →</span><span class="i18n-en">View the honor wall →</span></a>
</p>

# Educations

<ul>
{% for edu in site.data.profile.education %}
  <li><em>{{ edu.period }}</em>, {% if edu.link %}<a href="{{ edu.link }}"><span class="i18n-zh">{{ edu.zh }}</span><span class="i18n-en">{{ edu.en }}</span></a>{% else %}<span class="i18n-zh">{{ edu.zh }}</span><span class="i18n-en">{{ edu.en }}</span>{% endif %}</li>
{% endfor %}
</ul>

# Work Experience

<ul>
{% for job in site.data.profile.experience %}
  <li><em>{{ job.period }}</em>, {% if job.link %}<a href="{{ job.link }}"><span class="i18n-zh">{{ job.zh }}</span><span class="i18n-en">{{ job.en }}</span></a>{% else %}<span class="i18n-zh">{{ job.zh }}</span><span class="i18n-en">{{ job.en }}</span>{% endif %}</li>
{% endfor %}
</ul>
