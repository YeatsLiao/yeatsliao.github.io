---
layout: default
permalink: /projects/
title: "Projects"
author_profile: true
---

<style>
  .project-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
    margin-top: 1.5em;
  }
  @media (max-width: 768px) {
    .project-grid { grid-template-columns: 1fr; }
  }
  .project-card {
    display: flex;
    flex-direction: column;
    padding: 1.5em;
    background: #fff;
    border: 1px solid #f1f3f5;
    border-radius: 12px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    transition: all 0.3s ease;
  }
  .project-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.06);
    border-color: #e2e8f0;
  }
  .project-card h3 {
    margin: 0 0 0.5em 0;
    font-size: 1.15em;
  }
  .project-card h3 a {
    color: #212529;
    text-decoration: none;
  }
  .project-card h3 a:hover { color: #007bff; }
  .project-card .project-desc {
    flex: 1;
    font-size: 0.92em;
    color: #495057;
    line-height: 1.6;
    margin-bottom: 1em;
  }
  .project-card .project-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
  }
  .project-card .project-tags span {
    font-size: 0.75em;
    padding: 2px 10px;
    border-radius: 20px;
    background: #f1f3f5;
    color: #495057;
  }
</style>

<header>
  <h1 class="page__title">🚀 Projects</h1>
</header>

精选开源项目，完整列表见 <a href="https://github.com/YeatsLiao?tab=repositories">GitHub</a>。

<h2 style="margin-top: 1.5em;">🤖 AI 应用</h2>

<div class="project-grid">
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/emotion-sky">emotion-sky</a></h3>
    <div class="project-desc">情绪记录与可视化 Web 应用：将用户情绪映射为动态天气场景，支持城市情绪地图和趋势分析。</div>
    <div class="project-tags"><span>React</span><span>Vite</span><span>可视化</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/xmov-cultural-guardian">xmov-cultural-guardian</a></h3>
    <div class="project-desc">基于魔珐星云 SDK 的文化遗产数字守护者：数字人实时讲解与交互问答 Demo。</div>
    <div class="project-tags"><span>数字人</span><span>SDK 集成</span><span>交互问答</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/ascend-blog-skill">AI Agent Skill 系列</a></h3>
    <div class="project-desc">面向 AI 编码智能体的技能封装：昇腾/鲲鹏技术博客创作（ascend-blog-skill、kunpeng-blog-skill）、技术写作（yeats-tech-skill）与日记（yeats-diary-skill）等。</div>
    <div class="project-tags"><span>Python</span><span>Agent Skill</span><span>AI 写作</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/mindnlp">mindnlp（社区贡献）</a></h3>
    <div class="project-desc">基于 MindSpore 的 NLP/LLM 框架，兼容 HuggingFace 模型与数据集，参与社区代码贡献。</div>
    <div class="project-tags"><span>MindSpore</span><span>NLP</span><span>开源贡献</span></div>
  </div>
</div>

<h2 style="margin-top: 1.5em;">📚 交互式学习平台</h2>

<div class="project-grid">
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/design-patterns-23">design-patterns-23</a></h3>
    <div class="project-desc">为解决设计模式"看得懂记不住"的学习痛点，用 React 构建 23 种 GoF 设计模式的可视化交互演示与代码对照平台。</div>
    <div class="project-tags"><span>React</span><span>TypeScript</span><span>设计模式</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/java-handson-lab">java-handson-lab</a></h3>
    <div class="project-desc">Java 交互式可视化学习平台：通过 Web 图形界面与生动动画降低 Java 学习曲线。</div>
    <div class="project-tags"><span>TypeScript</span><span>Java 教学</span><span>动画演示</span></div>
  </div>
</div>

<h2 style="margin-top: 1.5em;">📖 开源文档与工具</h2>

<div class="project-grid">
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/rxtx-docs-cn">rxtx-docs-cn</a></h3>
    <div class="project-desc">RXTX 中文文档：为 Java 生态经典的跨平台串口/并口通信库系统性翻译整理中文文档，GitHub Pages 在线阅读。</div>
    <div class="project-tags"><span>Java</span><span>串口通信</span><span>文档翻译</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/huzhou-playbox">huzhou-playbox</a></h3>
    <div class="project-desc">demowall 活动互动应用：以轻量小游戏展示湖州文化特色，兼顾用户参与和休闲娱乐。</div>
    <div class="project-tags"><span>TypeScript</span><span>互动展示</span><span>文化创意</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/personal-study-notes">personal-study-notes</a></h3>
    <div class="project-desc">个人学习笔记仓库：Java、后端与工程化方向的系统性学习记录。</div>
    <div class="project-tags"><span>学习笔记</span><span>知识管理</span></div>
  </div>
  <div class="project-card">
    <h3><a href="https://github.com/YeatsLiao/perler-beads">perler-beads</a></h3>
    <div class="project-desc">拼拼豆豆：像素画风格的创意小工具。</div>
    <div class="project-tags"><span>Vue</span><span>创意工具</span></div>
  </div>
</div>
