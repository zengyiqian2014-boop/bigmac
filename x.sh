#!/bin/bash

echo "🚀 Cleaning old project..."

# 清理旧网站（防止冲突）
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -rf css js assets website

mkdir -p css

echo "🚀 Generating new GitHub Pages site..."

# ================= NAV =================
NAV='
<header class="topbar">
<div class="logo">🌿 Sustainability Project</div>
<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="about.html">About</a></li>
<li><a href="civilizations.html">Civilisations</a></li>
<li><a href="singapore.html">Singapore</a></li>
<li><a href="solution.html">Solution</a></li>
<li><a href="reflection.html">Reflection</a></li>
</ul>
</nav>
</header>
'

# ================= INDEX =================
cat > index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<section class="banner">
<h1>Sustainability from Ancient Civilisations</h1>
<p>Applying Ancient Ideas to Modern Singapore</p>
</section>

<div class="card">
<p>This project explores how ancient civilisations solved environmental problems and how we can apply them today.</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

</body>
</html>
EOF

# ================= ABOUT =================
cat > about.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<section class="banner">
<h1>About the Project</h1>
<p>Group learning journey</p>
</section>

<div class="card">
<p>We are a Primary 6 group working on sustainability concepts from ancient civilisations.</p>
<p>We researched, discussed, and created this website together.</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

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
<p>Solutions from the past</p>
</section>

<div class="card">
<h3>Indus Valley</h3>
<p>Ventilation and cooling design in homes.</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/4/4c/Mohenjo-daro_Sindh.jpeg" target="_blank">View Image</a>
</div>

<div class="card">
<h3>Ancient Egypt</h3>
<p>Nile-based irrigation system.</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/e/e3/Nile_River_and_farms.jpg" target="_blank">View Image</a>
</div>

<div class="card">
<h3>Roman Aqueducts</h3>
<p>Water transport engineering system.</p>
<a href="https://www.youtube.com/watch?v=v1EdMt7Hs7E" target="_blank">Watch Video</a>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

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
<p>Environmental issues today</p>
</section>

<div class="card">
<p>Urban heat island effect</p>
<p>Sea level rise risks</p>
<p>Water supply sustainability</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

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
<p>Inspired by ancient ideas</p>
</section>

<div class="card">
<p>We propose combining ancient cooling systems with modern green architecture in Singapore.</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

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
<p>What we learned</p>
</section>

<div class="card">
<p>We learned teamwork, research skills, and how past ideas still matter today.</p>
</div>

<footer>© 2026 Made by Eric, All rights reserved</footer>

</body>
</html>
EOF

# ================= CSS =================
cat > css/style.css << EOF
body{
margin:0;
font-family:Arial;
background:#f5f7f5;
font-size:18px;
}

/* NAV */
.topbar{
position:sticky;
top:0;
background:#0f3d2e;
color:white;
display:flex;
justify-content:space-between;
align-items:center;
padding:25px 40px;
}

.topbar ul{
display:flex;
gap:25px;
list-style:none;
margin:0;
padding:0;
}

.topbar a{
color:white;
text-decoration:none;
font-weight:bold;
}

/* BANNER */
.banner{
text-align:center;
padding:80px 20px;
background:linear-gradient(135deg,#0f3d2e,#2e7d32);
color:white;
}

.banner h1{
font-size:42px;
margin:0;
}

.banner p{
font-size:18px;
opacity:0.9;
}

/* CARD */
.card{
background:white;
margin:20px;
padding:20px;
border-radius:12px;
box-shadow:0 4px 10px rgba(0,0,0,0.1);
}

/* FOOTER */
footer{
text-align:center;
padding:20px;
background:#0f3d2e;
color:white;
margin-top:30px;
}
EOF

echo "✅ DONE - Website ready for GitHub Pages"