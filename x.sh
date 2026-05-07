#!/bin/bash

echo "🚀 Restoring original homepage + fixing navigation paths..."

# ================== 恢复 INDEX（按你原始版本） ==================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sustainability from Ancient Civilisations</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About the Project</a></li>
                <li><a href="civilizations.html">Ancient Civilisations</a></li>
                <li><a href="singapore.html">Singapore's Challenges</a></li>
                <li><a href="solution.html">Proposed Solution</a></li>
                <li><a href="reflection.html">Reflection</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <h1>Sustainability from Ancient Civilisations</h1>
            <h2>Applying Ancient Ideas to Modern Singapore</h2>
            <p>Explore how ancient civilisations solved environmental problems and learn how we can apply those ideas to Singapore today.</p>
        </section>
    </main>

    <footer>
        <p>© 2026 Made by Eric, All rights reserved.</p>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>
EOF

# ================== 修正所有链接（防 404） ==================
BASE="/bigmac"

find . -name "*.html" -exec sed -i '' "s|href=\"civilizations.html|href=\"${BASE}/pages/civilisations/index.html|g" {} +
find . -name "*.html" -exec sed -i '' "s|href=\"civilisations|href=\"${BASE}/pages/civilisations|g" {} +
find . -name "*.html" -exec sed -i '' "s|href=\"index.html|href=\"${BASE}/index.html|g" {} +

echo "✅ DONE - Homepage restored + navigation fixed"