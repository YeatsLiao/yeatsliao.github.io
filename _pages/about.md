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
  <h1 class="page__title">👋 About Me</h1>
</header>

{% for para in site.data.profile.intro %}
<p><span class="i18n-zh">{{ para.zh }}</span><span class="i18n-en">{{ para.en }}</span></p>
{% endfor %}

<p>
{% for badge in site.data.profile.badges %}
  {% if badge.link %}<a href="{{ badge.link }}"><img src="{{ badge.img }}" alt="{{ badge.alt }}"></a>{% else %}<img src="{{ badge.img }}" alt="{{ badge.alt }}">{% endif %}
{% endfor %}
</p>

# 🔥 Technical Skills

**<span class="i18n-zh">{{ site.data.skills.headline.zh }}</span><span class="i18n-en">{{ site.data.skills.headline.en }}</span>**

<ul>
{% for group in site.data.skills.groups %}
  <li><strong><span class="i18n-zh">{{ group.name.zh }}</span><span class="i18n-en">{{ group.name.en }}</span></strong>：{{ group.items }}</li>
{% endfor %}
</ul>

# 🎖 Honors and Awards

**<span class="i18n-zh">社区荣誉</span><span class="i18n-en">Community Honors</span>**

<ul>
{% for honor in site.data.honors.community %}
  <li><span class="i18n-zh">{{ honor.zh }}</span><span class="i18n-en">{{ honor.en }}</span></li>
{% endfor %}
</ul>

**<span class="i18n-zh">证书与奖项</span><span class="i18n-en">Certificates & Awards</span>**

<ul>
{% for award in site.data.honors.awards %}
  <li><em>{{ award.period }}</em>, <span class="i18n-zh">{{ award.zh }}</span><span class="i18n-en">{{ award.en }}</span>
  {% if award.image %}<br><img src="{{ award.image | relative_url }}" alt="{{ award.zh }}" loading="lazy" style="max-width: 320px; border-radius: 8px; margin-top: 0.5em;">{% endif %}
  </li>
{% endfor %}
</ul>

# 📖 Educations

<ul>
{% for edu in site.data.profile.education %}
  <li><em>{{ edu.period }}</em>, {% if edu.link %}<a href="{{ edu.link }}"><span class="i18n-zh">{{ edu.zh }}</span><span class="i18n-en">{{ edu.en }}</span></a>{% else %}<span class="i18n-zh">{{ edu.zh }}</span><span class="i18n-en">{{ edu.en }}</span>{% endif %}</li>
{% endfor %}
</ul>

# 💻 Work Experience

<ul>
{% for job in site.data.profile.experience %}
  <li><em>{{ job.period }}</em>, {% if job.link %}<a href="{{ job.link }}"><span class="i18n-zh">{{ job.zh }}</span><span class="i18n-en">{{ job.en }}</span></a>{% else %}<span class="i18n-zh">{{ job.zh }}</span><span class="i18n-en">{{ job.en }}</span>{% endif %}</li>
{% endfor %}
</ul>
