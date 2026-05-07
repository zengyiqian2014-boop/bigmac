#!/bin/bash

echo "🚀 Building FULL structured sustainability website (final version)..."

# 清理旧文件
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -rf css pages
mkdir -p css pages/civilisations

# ================= NAV =================
NAV='
<header class="topbar">
<div class="logo">🌿 Sustainability Project</div>
<nav>
<a href="index.html">Home</a>
<a href="civilizations.html">Civilisations</a>
<a href="singapore.html">Singapore</a>
<a href="solution.html">Solution</a>
<a href="reflection.html">Reflection</a>
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
<p>Learning from ancient systems to solve modern problems</p>
</section>

<div class="card">
<h2>Project Overview</h2>
<p>
This project explores how ancient civilisations designed sustainable systems using natural resources such as rivers, gravity, and climate adaptation.
</p>
<p>
We studied real historical evidence and compared it with Singapore’s modern environmental challenges.
</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

</body>
</html>
EOF

# ================= CIVILISATIONS MAIN =================
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
<p>Click each topic to explore details</p>
</section>

<div class="card"><a href="pages/civilisations/indus.html">Indus Valley Civilisation →</a></div>
<div class="card"><a href="pages/civilisations/egypt.html">Ancient Egypt →</a></div>
<div class="card"><a href="pages/civilisations/rome.html">Roman Aqueducts →</a></div>

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

<section class="banner">
<h1>Indus Valley Civilisation</h1>
</section>

<div class="card">
<h3>Problem</h3>
<p>Hot climate and need for efficient urban living.</p>

<h3>Solution</h3>
<p>Advanced drainage systems, wells, and planned streets for water management.</p>

<h3>Why it worked</h3>
<p>It used natural water flow and passive cooling instead of electricity.</p>

<h3>Modern connection</h3>
<p>Similar to Singapore’s drainage systems and urban planning today.</p>

<p><a href="https://www.britannica.com/topic/Indus-civilization" target="_blank">Source Reference</a></p>
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

<section class="banner">
<h1>Ancient Egypt</h1>
</section>

<div class="card">
<h3>Problem</h3>
<p>Dry environment with limited rainfall.</p>

<h3>Solution</h3>
<p>Used Nile River flooding to irrigate farmland.</p>

<h3>Why it worked</h3>
<p>Natural seasonal flooding supported agriculture cycles.</p>

<h3>Impact</h3>
<p>Enabled long-term civilisation growth.</p>

<p><a href="https://www.britannica.com/place/ancient-Egypt" target="_blank">Source Reference</a></p>
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

<section class="banner">
<h1>Roman Aqueducts</h1>
</section>

<div class="card">
<h3>Problem</h3>
<p>Need to transport water across long distances.</p>

<h3>Solution</h3>
<p>Gravity-based aqueduct systems that carried water to cities.</p>

<h3>Why it worked</h3>
<p>No electricity needed, only natural slope and engineering design.</p>

<h3>Impact</h3>
<p>Supported large urban populations.</p>

<p><a href="https://www.britannica.com/technology/aqueduct-engineering" target="_blank">Source Reference</a></p>
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

<section class="banner">
<h1>Singapore Challenges</h1>
</section>

<div class="card">
<h3>Urban Heat</h3>
<p>High density buildings trap heat.</p>

<h3>Sea Level Rise</h3>
<p>Low-lying land is vulnerable to flooding.</p>

<h3>Water Management</h3>
<p>Limited natural water resources require recycling systems.</p>
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

<section class="banner">
<h1>Proposed Solution</h1>
</section>

<div class="card">
<p>
We propose combining ancient passive cooling systems and natural water flow concepts with modern green building design in Singapore.
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

<section class="banner">
<h1>Reflection</h1>
</section>

<div class="card">
<p>
We learned how ancient civilisations solved problems using natural systems and how these ideas can still be used today.
</p>
<p>
We also improved teamwork, research skills, and presentation skills.
</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

</body>
</html>
EOF

# ================= CSS =================
cat > css/style.css << EOF
body{margin:0;font-family:Arial;background:#f4f7f4;font-size:18px;}

.topbar{
position:sticky;top:0;
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

echo "✅ DONE - FULL educational website generated (presentation ready)"