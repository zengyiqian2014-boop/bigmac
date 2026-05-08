#!/bin/bash

echo "🏆 Building A+ Sustainability Exhibition Website (FINAL)"

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
# STYLE (展览级 + 高级绿 + infographic)
# =========================
cat > css/style.css << 'EOF'
body{
    margin:0;
    font-family:Arial;
    background:#f3f7f3;
    color:#222;
}

header{
    background:#0f3d2e;
    padding:12px;
}

nav ul{
    display:flex;
    gap:18px;
    list-style:none;
    margin:0;
    padding:0;
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
    padding:100px 20px;
    position:relative;
}

.hero::after{
    content:"";
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    width:220px;
    height:220px;
    background:url("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Emblem_of_De_La_Salle_Brothers.svg/512px-Emblem_of_De_La_Salle_Brothers.svg.png");
    background-size:contain;
    opacity:0.08;
}

.banner{
    background:#1b5e20;
    color:white;
    text-align:center;
    padding:10px;
}

.content{
    max-width:1000px;
    margin:30px auto;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.section{
    margin-bottom:25px;
    padding:15px;
    border-left:5px solid #0f3d2e;
    background:#f9fbf9;
}

.img-grid{
    display:flex;
    gap:15px;
    flex-wrap:wrap;
}

.img-grid img{
    width:300px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

iframe{
    border-radius:10px;
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
# INDEX (A+ 三重结构核心)
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sustainability Exhibition A+</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="civilisations/index.html">Civilisations</a></li>
<li><a href="pages/solution.html">Solution</a></li>
<li><a href="pages/implementation.html">Implementation</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Learning From The Past</h1>
<p>Ancient Civilisations → Singapore Sustainability Solutions</p>
</div>

<div class="banner">
Exhibition: Sustainability Ideas for Singapore
</div>

<div class="content">

<div class="section">
<h2>1. Ancient Civilisations (Inspiration)</h2>
<ul>
<li>Indus Valley → natural ventilation + urban planning</li>
<li>Ancient Egypt → Nile irrigation system</li>
<li>Ancient Greece → hydro power systems</li>
</ul>
</div>

<div class="section">
<h2>2. Singapore Problem</h2>
<ul>
<li>High energy consumption</li>
<li>Water scarcity</li>
<li>Limited land space</li>
<li>High cooling demand</li>
</ul>
</div>

<div class="section">
<h2>3. Our Sustainability Solution</h2>
<p>
A smart green housing system inspired by ancient civilisations:
passive cooling, water recycling, and natural energy flow systems.
</p>
</div>

<div class="section">
<h2>Infographic (Visual Learning)</h2>

<div class="img-grid">
<img src="https://images.unsplash.com/photo-1500937386664-56d1dfef3854?w=800">
<img src="https://images.unsplash.com/photo-1496307042754-b4aa456c4a2d?w=800">
<img src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Emblem_of_De_La_Salle_Brothers.svg">
</div>
</div>

<div class="section">
<h2>Video Explanation</h2>

<iframe width="100%" height="400"
src="https://www.youtube.com/embed/P3t7RnBe9qI"
allowfullscreen></iframe>
</div>

<div class="section">
<h2>4. Feasibility</h2>
<p>
Singapore already uses NEWater, solar energy, and smart housing systems,
so this idea is realistic and can be improved further.
</p>
</div>

<div class="section">
<h2>5. Sustainability Impact</h2>
<ul>
<li>Reduces electricity use</li>
<li>Improves water efficiency</li>
<li>Reduces carbon emissions</li>
</ul>
</div>

</div>

<footer>A+ Exhibition Project</footer>

</body>
</html>
EOF

# =========================
# CIVILISATIONS
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

<div class="section">
<h2>Indus Valley</h2>
<p>Natural ventilation and grid-based urban planning.</p>
</div>

<div class="section">
<h2>Ancient Egypt</h2>
<p>Nile irrigation system for sustainable farming.</p>
</div>

<div class="section">
<h2>Ancient Greece</h2>
<p>Hydro power systems for mechanical energy.</p>
</div>

</div>

<footer>Exhibition</footer>

</body>
</html>
EOF

# =========================
# SOLUTION
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
<h1>Solution</h1>
</div>

<div class="content">
<div class="section">
<p>
Nature-based smart housing system inspired by ancient civilisations,
integrating cooling, water reuse, and energy efficiency.
</p>
</div>
</div>

<footer>Solution</footer>

</body>
</html>
EOF

# =========================
# IMPLEMENTATION
# =========================
cat > pages/implementation.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implementation</title>
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
<h1>Implementation Plan</h1>
</div>

<div class="content">
<div class="section">
<ul>
<li>Integrate into future HDB design</li>
<li>Improve natural ventilation systems</li>
<li>Expand water recycling infrastructure</li>
<li>Use simulation before construction</li>
</ul>
</div>
</div>

<footer>Implementation</footer>

</body>
</html>
EOF

echo "🏆 A+ EXHIBITION SITE READY"
echo "🚀 git add . && git commit -m 'A+ exhibition final' && git push"