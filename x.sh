#!/bin/bash

echo "🚀 Rebuilding FULL stable GitHub Pages site..."

# 清理旧结构
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -rf css pages
mkdir -p css pages/civilisations

# ================= NAV（关键修复：全部绝对路径） =================
NAV='
<header class="topbar">
<div class="logo">🌿 Sustainability Project</div>
<nav>
<a href="/index.html">Home</a>
<a href="/civilizations.html">Civilisations</a>
<a href="/singapore.html">Singapore</a>
<a href="/solution.html">Solution</a>
<a href="/reflection.html">Reflection</a>
</nav>
</header>
'

# ================= HOME =================
cat > index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Home</title>
</head>
<body>

$NAV

<section class="banner">
<h1>Sustainability from Ancient Civilisations</h1>
<p>Learning from ancient systems to modern Singapore</p>
</section>

<div class="card">
<p>
This project explores how ancient civilisations used natural systems like rivers, gravity, and climate design to solve environmental problems.
</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= CIVILISATIONS =================
cat > civilizations.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<section class="banner">
<h1>Ancient Civilisations</h1>
<p>Click to explore details</p>
</section>

<div class="card"><a href="/pages/civilisations/indus.html">Indus Valley →</a></div>
<div class="card"><a href="/pages/civilisations/egypt.html">Ancient Egypt →</a></div>
<div class="card"><a href="/pages/civilisations/rome.html">Roman Aqueducts →</a></div>

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

<div class="banner"><h1>Indus Valley Civilisation</h1></div>

<div class="card">
<h3>Problem</h3>
<p>Hot climate and need for city planning.</p>

<h3>Solution</h3>
<p>Drainage system, wells, structured streets.</p>

<h3>Why it worked</h3>
<p>Used natural water flow instead of machines.</p>

<h3>Modern link</h3>
<p>Similar to Singapore drainage systems.</p>
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
<h3>Problem</h3>
<p>Dry desert environment.</p>

<h3>Solution</h3>
<p>Nile River irrigation system.</p>

<h3>Why it worked</h3>
<p>Used natural seasonal flooding.</p>
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
<h3>Problem</h3>
<p>Need to transport water to cities.</p>

<h3>Solution</h3>
<p>Gravity-based aqueduct systems.</p>

<h3>Why it worked</h3>
<p>No electricity needed.</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= SINGAPORE =================
cat > singapore.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>Singapore Challenges</h1></div>

<div class="card">
<p>Urban heat island</p>
<p>Sea level rise</p>
<p>Water management issues</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= SOLUTION =================
cat > solution.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>Proposed Solution</h1></div>

<div class="card">
<p>
Combine ancient passive cooling + modern green buildings for Singapore.
</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= REFLECTION =================
cat > reflection.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<div class="banner"><h1>Reflection</h1></div>

<div class="card">
<p>
We learned teamwork, sustainability concepts, and how ancient ideas still apply today.
</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

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
padding:20px 30px;
}

.topbar a{
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
box-shadow:0 4px 10px rgba(0,0,0,0.1);
}

footer{
text-align:center;
padding:20px;
background:#0f3d2e;
color:white;
}
EOF

echo "✅ DONE - Fixed navigation + stable GitHub Pages structure"