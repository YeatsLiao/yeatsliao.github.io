/* 中英文切换逻辑：语言偏好持久化在 localStorage（key: site-lang，值 zh / en，默认 zh） */
(function () {
  function currentLang() {
    try {
      return localStorage.getItem('site-lang') || 'zh';
    } catch (e) {
      return 'zh';
    }
  }

  function applyLang(lang) {
    document.documentElement.classList.toggle('lang-en', lang === 'en');
    updateButton(lang);
  }

  function updateButton(lang) {
    var btn = document.getElementById('lang-toggle');
    if (btn) {
      // 按钮显示"切换目标"语言
      btn.textContent = lang === 'en' ? '中文' : 'EN';
    }
  }

  window.toggleSiteLang = function () {
    var next = currentLang() === 'en' ? 'zh' : 'en';
    try {
      localStorage.setItem('site-lang', next);
    } catch (e) { /* 隐私模式下忽略 */ }
    applyLang(next);
  };

  // 根类立即设置，避免页面闪烁；按钮文字等 DOM 就绪后更新
  applyLang(currentLang());
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', function () {
      updateButton(currentLang());
    });
  }
})();
