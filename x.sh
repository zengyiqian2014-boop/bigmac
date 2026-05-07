#!/bin/bash

echo "🚀 Safe fix (no directory errors)..."

BASE="/bigmac"

# 找到所有 html 文件（只处理真实存在的）
find . -type f -name "*.html" | while IFS= read -r file; do

    # 如果文件不存在，跳过（防 no such file）
    [ ! -f "$file" ] && continue

    echo "Fixing: $file"

    # 安全替换（不拆路径）
    sed -i '' "s|href=\"index.html|href=\"${BASE}/index.html|g" "$file" 2>/dev/null
    sed -i '' "s|href=\"civilisations|href=\"${BASE}/pages/civilisations|g" "$file" 2>/dev/null

done

echo "✅ DONE - no missing file errors"