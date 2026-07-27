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
  <h1 class="page__title">关于我</h1>
</header>

{% for para in site.data.profile.intro %}
<p><span class="i18n-zh">{{ para.zh }}</span><span class="i18n-en">{{ para.en }}</span></p>
{% endfor %}

<p>
{% for badge in site.data.profile.badges %}
  {% if badge.link %}<a href="{{ badge.link }}"><img src="{{ badge.img }}" alt="{{ badge.alt }}"></a>{% else %}<img src="{{ badge.img }}" alt="{{ badge.alt }}">{% endif %}
{% endfor %}
</p>

# 技术能力

<ul>
{% for group in site.data.skills.groups %}
  <li><strong><span class="i18n-zh">{{ group.name.zh }}</span><span class="i18n-en">{{ group.name.en }}</span></strong>：{{ group.items }}</li>
{% endfor %}
</ul>

# 荣誉与奖项

<p>
  <span class="i18n-zh">云厂商与开发者社区认证证书 40+ 项，覆盖云计算、AI 与开源生态。</span>
  <span class="i18n-en">40+ certifications from cloud vendors and developer communities, covering cloud computing, AI, and the open source ecosystem.</span>
  <a href="{{ '/honors/' | relative_url }}"><span class="i18n-zh">查看荣誉墙 →</span><span class="i18n-en">View the honor wall →</span></a>
</p>

# 教育经历

<ul>
{% for edu in site.data.profile.education %}
  <li><em>{{ edu.period }}</em>, {% if edu.link %}<a href="{{ edu.link }}"><span class="i18n-zh">{{ edu.zh }}</span><span class="i18n-en">{{ edu.en }}</span></a>{% else %}<span class="i18n-zh">{{ edu.zh }}</span><span class="i18n-en">{{ edu.en }}</span>{% endif %}</li>
{% endfor %}
</ul>

# 工作经历

<ul>
{% for job in site.data.profile.experience %}
  <li><em>{{ job.period }}</em>, {% if job.link %}<a href="{{ job.link }}"><span class="i18n-zh">{{ job.zh }}</span><span class="i18n-en">{{ job.en }}</span></a>{% else %}<span class="i18n-zh">{{ job.zh }}</span><span class="i18n-en">{{ job.en }}</span>{% endif %}</li>
{% endfor %}
</ul>
