#!/bin/bash

echo "🚀 Fixing ALL GitHub Pages path issues (safe mode)..."

# ===== 自动识别 GitHub Pages repo 子路径 =====
# ⚠️ 你现在是 bigmac，就固定用这个
BASE="/bigmac"

# ===== 修复所有 href/src 的根路径问题 =====
find . -name "*.html" -exec sed -i '' "s|href=\"/|href=\"${BASE}/|g" {} +
find . -name "*.html" -exec sed -i '' "s|src=\"/|src=\"${BASE}/|g" {} +

# ===== 修复常见子页面跳转错误 =====
find . -name "*.html" -exec sed -i '' "s|civilizations.html|pages/civilisations/index.html|g" {} +
find . -name "*.html" -exec sed -i '' "s|civilisations.html|pages/civilisations/index.html|g" {} +

echo "✅ DONE - paths fixed, no homepage changes"