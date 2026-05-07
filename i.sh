#!/bin/bash

echo "Fixing navigation + upgrading UI..."

# =========================
# 清理旧文件（保留git结构）
# =========================
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -f css/style.css
rm -rf js

mkdir -p css
mkdir -p js

# =========================
# NAV（统一版本）
# =========================
NAV='
<header>
<nav class="navbar">
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="about.html">About</a></li>
<li><a href="civilizations.html">Ancient Civilisations</a></li>
<li><a href="singapore.html">Singapore</a></li>
<li><a href="solution.html">Solution</a></li>
<li><a href="reflection.html">Reflection</a></li>
</ul>
</nav>
</header>
'

# =========================
# INDEX
# =========================
cat > index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

$NAV

<main>
<section class="hero">
<h1>Sustainability from Ancient Civilisations</h1>
<h2>How past ideas help modern Singapore</h2>

<p>
We studied how ancient civilisations solved problems like heat, water, and city design, 
and compared them with Singapore today.
</p>

<img src="https://upload.wikimedia.org/wikipedia/commons/1/1c/Singapore_skyline_2020.jpg">
</section>
</main>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# =========================
# ABOUT
# =========================
cat > about.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>About</title>
</head>
<body>

$NAV

<h2>About the Project</h2>

<div class="card">
<p>This is a Primary 6 Social Studies group project.</p>
<p>We explored how ancient civilisations solved real environmental problems.</p>
</div>

<div class="card">
<h3>Key Questions</h3>
<ul>
<li>What problems existed?</li>
<li>How were they solved?</li>
<li>Are they still useful today?</li>
</ul>
</div>

</body>
</html>
EOF

# =========================
# CIVILISATIONS
# =========================
cat > civilizations.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Civilisations</title>
</head>
<body>

$NAV

<h2>Ancient Civilisations</h2>

<div class="card">
<h3>Indus Valley</h3>
<p>Problem: Hot cities</p>
<p>Solution: Courtyards + airflow</p>
<p>Modern link: Natural ventilation in buildings</p>
</div>

<div class="card">
<h3>Ancient Egypt</h3>
<p>Problem: Dry farming land</p>
<p>Solution: Nile irrigation</p>
<p>Modern link: Water management systems</p>
</div>

<div class="card">
<h3>Roman Aqueducts</h3>
<iframe width="100%" height="300"
src="https://www.youtube.com/embed/v1EdMt7Hs7E"
allowfullscreen></iframe>
<p>Gravity-based water transport system</p>
</div>

</body>
</html>
EOF

# =========================
# SINGAPORE
# =========================
cat > singapore.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Singapore</title>
</head>
<body>

$NAV

<h2>Singapore Challenges</h2>

<div class="card">
<p>🔥 Urban heat island effect</p>
<p>🌊 Rising sea levels</p>
<p>💧 Water supply challenges</p>
</div>

</body>
</html>
EOF

# =========================
# SOLUTION
# =========================
cat > solution.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Solution</title>
</head>
<body>

$NAV

<h2>Proposed Solution</h2>

<div class="card">
<h3>Inspired by Ancient Systems</h3>
<p>Improve drainage and water storage in cities</p>
<p>Use natural flow concepts from ancient engineering</p>
</div>

</body>
</html>
EOF

# =========================
# REFLECTION
# =========================
cat > reflection.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Reflection</title>
</head>
<body>

$NAV

<h2>Reflection</h2>

<div class="card">
We learned that ancient ideas are simple but effective.
</div>

<div class="card">
We realized many modern problems already existed in the past.
</div>

<div class="card">
We improved our understanding of sustainability.
</div>

</body>
</html>
EOF

# =========================
# CSS (UI升级)
# =========================
cat > css/style.css << EOF
body{
font-family: Arial;
margin:0;
background:#f4f7f4;
font-size:18px;
}

/* NAV */
.navbar ul{
display:flex;
flex-wrap:wrap;
justify-content:center;
gap:20px;
list-style:none;
padding:15px;
background:#1b5e20;
}

.navbar a{
color:white;
text-decoration:none;
font-size:18px;
font-weight:bold;
}

/* HERO */
.hero{
text-align:center;
padding:30px;
font-size:20px;
}

.hero h1{
font-size:36px;
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
box-shadow:0 2px 8px rgba(0,0,0,0.1);
font-size:18px;
}

.card h3{
font-size:22px;
}

.card img{
width:100%;
border-radius:10px;
margin-top:10px;
}

footer{
text-align:center;
padding:25px;
background:#1b5e20;
color:white;
}
EOF

echo "DONE - UI fixed + navigation unified + Pages ready"