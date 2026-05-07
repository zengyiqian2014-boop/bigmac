#!/bin/bash

echo "Cleaning old files..."

# ❌ 清理旧网站文件（根目录）
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -rf css js assets website

mkdir -p css

echo "Generating new GitHub Pages site..."

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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sustainability Project</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<section class="hero">
<h1>Sustainability from Ancient Civilisations</h1>
<h2>Applying Ancient Ideas to Singapore</h2>
<p>Exploring how ancient solutions still matter today.</p>
<img src="https://upload.wikimedia.org/wikipedia/commons/1/1c/Singapore_skyline_2020.jpg">
</section>

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

<h2>About the Project</h2>

<div class="card">
<p>Primary 6 Social Studies group project.</p>
<p>We studied sustainability ideas from ancient civilisations.</p>
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

<h2>Ancient Civilisations</h2>

<div class="card">
<h3>Indus Valley</h3>
<img src="https://upload.wikimedia.org/wikipedia/commons/4/4c/Mohenjo-daro_Sindh.jpeg">
<p>Natural ventilation cooling system.</p>
</div>

<div class="card">
<h3>Ancient Egypt</h3>
<img src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Nile_River_and_farms.jpg">
<p>Nile irrigation for agriculture.</p>
</div>

<div class="card">
<h3>Roman Aqueducts</h3>
<iframe width="100%" height="250"
src="https://www.youtube.com/embed/v1EdMt7Hs7E"
allowfullscreen></iframe>
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

<h2>Singapore Challenges</h2>

<div class="card">
<p>Urban heat island effect</p>
<p>Sea level rise</p>
<p>Water management issues</p>
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

<h2>Proposed Solution</h2>

<div class="card">
<p>Combine ancient water systems with modern urban planning.</p>
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

<h2>Reflection</h2>

<div class="card">
<p>We learned that old ideas can still solve modern problems.</p>
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
z-index:999;
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
font-size:18px;
font-weight:bold;
}

/* HERO */
.hero{
text-align:center;
padding:90px 20px;
background:linear-gradient(135deg,#e8f5e9,#ffffff);
}

.hero h1{
font-size:44px;
}

.hero h2{
font-size:24px;
}

/* CARD */
.card{
background:white;
margin:20px;
padding:20px;
border-radius:12px;
box-shadow:0 4px 10px rgba(0,0,0,0.1);
}

.card img{
width:100%;
border-radius:10px;
margin-top:10px;
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

echo "DONE - GitHub Pages ready (root deployed)"