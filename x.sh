#!/bin/bash

echo "🚀 Building APP-style navigation website (NO MORE 404)..."

# 清理旧文件
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -rf css pages
mkdir -p css pages/civilisations js

# ================= NAV（JS控制跳转，不再写死路径） =================
NAV='
<header class="topbar">
<div class="logo">🌿 Sustainability Project</div>
<nav>
<button onclick="goHome()">Home</button>
<button onclick="goCivil()">Civilisations</button>
<button onclick="goSG()">Singapore</button>
<button onclick="goSol()">Solution</button>
<button onclick="goRef()">Reflection</button>
</nav>
</header>
'

# ================= JS ROUTER =================
cat > js/router.js << EOF
function goHome(){ window.location.href="/index.html"; }
function goCivil(){ window.location.href="/pages/civilisations/"; }
function goSG(){ window.location.href="/singapore.html"; }
function goSol(){ window.location.href="/solution.html"; }
function goRef(){ window.location.href="/reflection.html"; }
EOF

# ================= INDEX =================
cat > index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<script src="js/router.js"></script>
</head>
<body>

$NAV

<div class="banner">
<h1>Sustainability from Ancient Civilisations</h1>
<p>App-style navigation system (no broken links)</p>
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
<script src="../../js/router.js"></script>
</head>
<body>

$NAV

<div class="banner">
<h1>Ancient Civilisations</h1>
</div>

<div class="card">
<a href="indus.html">Indus Valley</a>
</div>

<div class="card">
<a href="egypt.html">Ancient Egypt</a>
</div>

<div class="card">
<a href="rome.html">Roman Aqueducts</a>
</div>

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
<script src="../../js/router.js"></script>
</head>
<body>

$NAV

<div class="banner"><h1>Indus Valley Civilisation</h1></div>

<div class="card">
<p>Advanced drainage systems and urban planning.</p>
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
<script src="../../js/router.js"></script>
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
<script src="../../js/router.js"></script>
</head>
<body>

$NAV

<div class="banner"><h1>Roman Aqueducts</h1></div>

<div class="card">
<p>Gravity-based water system.</p>
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
<link rel="stylesheet" href="css/style.css">
<script src="js/router.js"></script>
</head>
<body>

$NAV

<div class="banner"><h1>${page}</h1></div>

<div class="card">
<p>Content for ${page} page.</p>
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

nav button{
background:none;
border:none;
color:white;
font-size:16px;
margin:10px;
cursor:pointer;
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

echo "✅ DONE - App navigation system deployed (ZERO 404 links)"