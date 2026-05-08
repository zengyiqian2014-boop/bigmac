#!/bin/bash

echo "🌿 Building: Learning From The Past - Sustainability Exhibition"

# =========================
# CLEAN
# =========================
rm -rf css js pages civilisations
rm -f *.html

mkdir css
mkdir js
mkdir pages
mkdir civilisations

# =========================
# STYLE (绿色展览风)
# =========================
cat > css/style.css << 'EOF'
body{
    margin:0;
    font-family:Arial;
    background:#f4f7f4;
    color:#222;
}

header{
    background:#0f3d2e;
    padding:12px 20px;
}

nav ul{
    list-style:none;
    display:flex;
    gap:18px;
    padding:0;
    margin:0;
}

nav a{
    color:white;
    text-decoration:none;
    font-weight:bold;
}

.hero{
    background:linear-gradient(135deg,#0f3d2e,#1b5e20);
    color:white;
    text-align:center;
    padding:90px 20px;
}

.hero h1{
    font-size:42px;
}

.banner{
    background:#1b5e20;
    color:white;
    text-align:center;
    padding:12px;
}

.content{
    max-width:1000px;
    margin:30px auto;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.card{
    margin:15px 0;
    padding:15px;
    border-left:5px solid #0f3d2e;
    background:#f9fdf9;
}

footer{
    background:#0f3d2e;
    color:white;
    text-align:center;
    padding:15px;
    margin-top:40px;
}
EOF

# =========================
# JS
# =========================
cat > js/main.js << 'EOF'
console.log("Sustainability Exhibition Loaded");
EOF

# =========================
# INDEX PAGE (核心展示)
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sustainability Exhibition</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="civilisations/index.html">Civilisations</a></li>
<li><a href="pages/solution.html">Solutions</a></li>
<li><a href="pages/reflection.html">Reflection</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Learning From The Past</h1>
<p>Sustainability of Ancient Civilisations → Singapore Solutions</p>
</div>

<div class="banner">
Exhibition: Sustainability Ideas for Singapore
</div>

<div class="content">

<div class="card">
<h2>Which civilisation inspired your idea?</h2>
<p>Indus Valley, Ancient Egypt, and Ancient Greece inspired our sustainability solutions.</p>
</div>

<div class="card">
<h2>What problem does Singapore face?</h2>
<p>Limited land, high energy use, water scarcity, and high cooling demand.</p>
</div>

<div class="card">
<h2>Our Key Idea</h2>
<p>Nature-based smart housing using passive cooling, water recycling, and energy-efficient systems.</p>
</div>

<div class="card">
<h2>How is it sustainable?</h2>
<p>Reduces energy consumption, reuses water, and integrates natural systems into urban design.</p>
</div>

<div class="card">
<h2>Implementation</h2>
<p>Apply in future HDB design, improve ventilation systems, and expand water recycling networks.</p>
</div>

</div>

<footer>Learning From The Past - Sustainability Exhibition</footer>

</body>
</html>
EOF

# =========================
# CIVILISATIONS PAGE
# =========================
cat > civilisations/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Civilisations</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="../index.html">Home</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
</div>

<div class="content">

<div class="card">
<h2>Indus Valley Civilisation</h2>
<p>Urban planning + natural ventilation systems.</p>
</div>

<div class="card">
<h2>Ancient Egypt</h2>
<p>Basin irrigation system using Nile flood cycles.</p>
</div>

<div class="card">
<h2>Ancient Greece</h2>
<p>Early hydro power for mechanical tasks.</p>
</div>

</div>

<footer>Exhibition Project</footer>

</body>
</html>
EOF

# =========================
# SOLUTION PAGE
# =========================
cat > pages/solution.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Solution</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="../index.html">Home</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Our Sustainability Solution</h1>
</div>

<div class="content">
<p>
We propose a Nature-Based Smart Housing System inspired by ancient civilisations.
It integrates passive cooling, water recycling, and natural energy systems.
</p>
</div>

<footer>Solution Page</footer>

</body>
</html>
EOF

# =========================
# REFLECTION PAGE
# =========================
cat > pages/reflection.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reflection</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="../index.html">Home</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Reflection</h1>
</div>

<div class="content">
<p>
We learned that ancient civilisations used natural systems efficiently.
These ideas can still solve modern sustainability challenges in Singapore.
</p>
</div>

<footer>Reflection Page</footer>

</body>
</html>
EOF

echo "✅ DONE: Exhibition Website Ready"
echo "🚀 RUN: git add . && git commit -m 'exhibition site' && git push"