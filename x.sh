#!/bin/bash

echo "Cleaning old site and rebuilding stable Pages version..."

# 清理旧文件（根目录）
rm -f index.html about.html civilizations.html singapore.html solution.html reflection.html
rm -rf css js assets website

mkdir -p css

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
<p>Explore how ancient civilisations solved environmental problems.</p>

<a href="https://upload.wikimedia.org/wikipedia/commons/1/1c/Singapore_skyline_2020.jpg" target="_blank">
Click to view image: Singapore Skyline
</a>
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
<p>What we are learning</p>
</section>

<div class="card">
<p>Primary 6 Social Studies group project on sustainability.</p>
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
<p>Natural ventilation in cities</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/4/4c/Mohenjo-daro_Sindh.jpeg" target="_blank">View Image</a>
</div>

<div class="card">
<h3>Ancient Egypt</h3>
<p>Nile irrigation system</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/e/e3/Nile_River_and_farms.jpg" target="_blank">View Image</a>
</div>

<div class="card">
<h3>Roman Aqueducts Video</h3>
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
<p>Modern environmental issues</p>
</section>

<div class="card">
<p>Urban heat island effect</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/1/1c/Singapore_skyline_2020.jpg" target="_blank">View Image</a>
</div>

<div class="card">
<p>Sea level rise concern</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/6/6e/Sea_level_rise_diagram.png" target="_blank">View Diagram</a>
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
<p>Inspired by ancient systems</p>
</section>

<div class="card">
<p>Use natural water flow and cooling methods from ancient civilisations.</p>
<a href="https://upload.wikimedia.org/wikipedia/commons/e/e3/Nile_River_and_farms.jpg" target="_blank">Reference Image</a>
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
<p>We learned how ancient ideas still solve modern problems.</p>
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

echo "DONE - Clean link-based GitHub Pages site ready"