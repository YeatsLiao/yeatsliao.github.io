# yeatsliao.github.io

[中文说明](./README.md)

[![Jekyll](https://img.shields.io/badge/Jekyll-4.x-cc0000?style=flat-square&logo=jekyll)](https://jekyllrb.com/)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-deployed-222?style=flat-square&logo=github)](https://yeatsliao.github.io)
[![License](https://img.shields.io/github/license/YeatsLiao/yeatsliao.github.io?style=flat-square)](LICENSE)

**Personal homepage of Yeats_Liao** — Java Backend / AI Application Developer. A Jekyll static site with a Chinese/English toggle and fully data-driven content: editing content only requires touching YAML files, never HTML.

Live site: <https://yeatsliao.github.io>

## ✨ Features

- **Data-driven content**: intro, skills, honors, projects, and activities all live in `_data/*.yml` — CRUD by editing YAML only
- **Chinese/English toggle**: one-click switch in the navbar, preference persisted in localStorage
- **Project card wall**: categorized open source projects with cover images and tech tags
- **Activity timeline**: year-grouped timeline with role badges and photos
- **Blog timeline**: Markdown writing, archived by year
- **Responsive design**: desktop / tablet / mobile

## 🏗 Architecture

```
yeatsliao.github.io
├── _config.yml              # Site-wide config (title, SEO, avatar, social links)
├── _data/                   # ★ Content data layer (edit here for daily maintenance)
│   ├── navigation.yml       #   Navbar menu
│   ├── profile.yml          #   Homepage intro, badge bar, education, work experience
│   ├── skills.yml           #   Technical skills
│   ├── honors.yml           #   Community honors + certificates & awards
│   ├── projects.yml         #   Open source projects (categories + cards)
│   └── activities.yml       #   Activity timeline
├── _pages/                  # Page templates (render from _data; rarely need edits)
│   ├── about.md             #   Homepage /
│   ├── projects.md          #   /projects/
│   ├── activities.md        #   /activities/
│   └── blog.md              #   /blog/
├── _posts/                  # Blog posts (YYYY-MM-DD-title.md)
├── _layouts/ _includes/     # Layouts & components (navbar, sidebar, head, etc.)
├── _sass/                   # Theme styles
├── assets/
│   ├── css/i18n.css         # Language toggle styles
│   └── js/i18n.js           # Language toggle logic (localStorage: site-lang)
└── images/                  # Image assets (see naming convention below)
    ├── site/                #   Favicons and site icons
    ├── projects/            #   Project screenshots
    ├── activities/          #   Activity photos
    ├── certs/               #   Certificate scans
    └── badges/              #   Badge assets
```

## 📝 Content Maintenance Guide

Daily maintenance only involves the YAML files under `_data/` and the `_posts/` directory; Jekyll re-renders automatically.

| What to do | File to edit | Notes |
| --- | --- | --- |
| Update intro / education / work | `_data/profile.yml` | `intro` for hero paragraphs, `badges` for the badge bar |
| Add/remove skills | `_data/skills.yml` | Maintained per group under `groups` |
| Add honors / certificates | `_data/honors.yml` | `community` for honors, `awards` for certs (image optional) |
| Add an open source project | `_data/projects.yml` | Append under the matching category's `items` |
| Add an activity | `_data/activities.yml` | Just append; the page sorts by date descending |
| Adjust the nav menu | `_data/navigation.yml` | Edit the `main` list |
| Write a blog post | `_posts/` | Create `YYYY-MM-DD-title.md` with front matter |

**Bilingual field convention** — every displayed text has `zh` / `en` sub-fields:

```yaml
- name: my-new-project
  link: https://github.com/YeatsLiao/my-new-project
  desc:
    zh: 一句话中文描述。
    en: One-line English description.
  tags: [Java, Spring Boot]
  # image: images/projects/my-new-project-cover.webp   # optional
```

**Image naming convention**: `images/{category}/{subject}-{description}-{index|date}.{ext}`, lowercase kebab-case, e.g.:

- Project cover: `images/projects/emotion-sky-cover.webp`
- Activity photo: `images/activities/2026-04-11-demowall-01.webp`
- Certificate: `images/certs/2024-aliyun-clouder-openapi.webp`

## 🌐 Language Toggle Mechanism

- The `EN / 中文` button in the navbar switches languages; the preference is stored in `localStorage` (key: `site-lang`, default Chinese)
- Implementation: a `lang-en` class on the `<html>` element, with CSS controlling `.i18n-zh` / `.i18n-en` visibility
- Bilingual markup in templates: `<span class="i18n-zh">中文</span><span class="i18n-en">English</span>`
- New content in data files switches automatically once its `zh` / `en` fields are filled in

## 🚀 Local Development

Requires Ruby 3.x and Bundler:

```bash
git clone https://github.com/YeatsLiao/yeatsliao.github.io.git
cd yeatsliao.github.io
bundle install
bundle exec jekyll serve
# Open http://127.0.0.1:4000
```

Pushing to the `main` branch triggers automatic build and deployment via GitHub Pages.

## 🙏 Acknowledgements

The theme is based on [AcadHomepage](https://github.com/RayeRen/acad-homepage.github.io) (derived from [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes)). Thanks to the original authors.

## 📄 License

This project is open-sourced under the [MIT License](LICENSE).
