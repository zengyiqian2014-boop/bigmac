#!/bin/bash

echo "🚀 Fixing GitHub Pages BIGMAC path + rebuilding site..."

rm -rf css js pages
rm -f index.html singapore.html solution.html reflection.html

mkdir -p css pages/civilisations js

# ================= 自动 BASE PATH（关键修复） =================
BASE="/bigmac"

# ================= NAV（全部自动带 base） =================
NAV="
<header class=\"topbar\">
<div class=\"logo\">🌿 Sustainability Project</div>
<nav>
<a href=\"${BASE}/index.html\">Home</a>
<a href=\"${BASE}/pages/civilisations/index.html\">Civilisations</a>
<a href=\"${BASE}/singapore.html\">Singapore</a>
<a href=\"${BASE}/solution.html\">Solution</a>
<a href=\"${BASE}/reflection.html\">Reflection</a>
</nav>
</header>
"

# ================= INDEX =================
cat > index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${BASE}/css/style.css">
</head>
<body>

$NAV

<div class="banner">
<h1>Sustainability from Ancient Civilisations</h1>
<p>Fully fixed GitHub Pages version (no more 404)</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= CIVILISATIONS INDEX =================
cat > pages/civilisations/index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

$NAV

<div class="banner">
<h1>Ancient Civilisations</h1>
</div>

<div class="card"><a href="${BASE}/pages/civilisations/indus.html">Indus Valley</a></div>
<div class="card"><a href="${BASE}/pages/civilisations/egypt.html">Egypt</a></div>
<div class="card"><a href="${BASE}/pages/civilisations/rome.html">Rome</a></div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= INDUS =================
cat > pages/civilisations/indus.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>Indus Valley</h1></div>

<div class="card">
<p>Advanced drainage + urban planning system.</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= EGYPT =================
cat > pages/civilisations/egypt.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>Ancient Egypt</h1></div>

<div class="card">
<p>Nile river irrigation system.</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= ROME =================
cat > pages/civilisations/rome.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>Roman Aqueducts</h1></div>

<div class="card">
<p>Gravity-based water transport system.</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= OTHER PAGES =================
for page in singapore solution reflection; do
cat > ${page}.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${BASE}/css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>${page}</h1></div>

<div class="card">
<p>Content for ${page}</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF
done

# ================= CSS =================
cat > css/style.css << EOF
body{margin:0;font-family:Arial;background:#f4f7f4;font-size:18px;}

.topbar{
position:sticky;
top:0;
background:#0f3d2e;
color:white;
display:flex;
justify-content:space-between;
padding:20px;
}

nav a{
color:white;
margin:10px;
text-decoration:none;
font-weight:bold;
}

.banner{
text-align:center;
padding:80px 20px;
background:linear-gradient(135deg,#0f3d2e,#2e7d32);
color:white;
}

.card{
background:white;
margin:20px;
padding:20px;
border-radius:10px;
}

footer{
text-align:center;
padding:20px;
background:#0f3d2e;
color:white;
}
EOF

echo "✅ FIXED - BIGMAC base path applied, no more 404"