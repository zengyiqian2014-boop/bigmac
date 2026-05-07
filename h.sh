#!/bin/bash

echo "Cleaning old project files..."

# 清理旧结构（安全版，只删常见目录/文件）
rm -rf pages css js assets index.html about.html civilizations.html singapore.html solution.html reflection.html

echo "Creating new GitHub Pages structure..."

mkdir -p css
mkdir -p js

# =========================
# INDEX
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sustainability from Ancient Civilisations</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<header>
<nav>
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

<main>

<section class="hero">
<h1>Sustainability from Ancient Civilisations</h1>
<h2>Applying Ancient Ideas to Modern Singapore</h2>

<p>
We looked at how ancient civilisations solved problems like heat, water and city design, and discussed how these ideas can still help Singapore today.
</p>

<img src="https://upload.wikimedia.org/wikipedia/commons/1/1c/Singapore_skyline_2020.jpg">
</section>

</main>

<footer>
<p>© 2026 Made by Eric, All rights reserved.</p>
</footer>

</body>
</html>
EOF

# =========================
# ABOUT
# =========================
cat > about.html << 'EOF'
<h2>About the Project</h2>

<p>This is a Primary 6 Social Studies group project.</p>

<p>We worked in a group to explore how ancient civilisations solved environmental problems.</p>

<h3>Key Questions</h3>
<ul>
<li>What problems did ancient civilisations face?</li>
<li>What solutions did they use?</li>
<li>Are these ideas still useful today?</li>
<li>How can Singapore apply them?</li>
</ul>
EOF

# =========================
# CIVILISATIONS
# =========================
cat > civilizations.html << 'EOF'
<h2>Ancient Civilisations</h2>

<div class="card">

<h3>Indus Valley Civilisation</h3>

<img src="https://upload.wikimedia.org/wikipedia/commons/4/4c/Mohenjo-daro_Sindh.jpeg">

<p>Problem: Hot climate in dense cities</p>
<p>Solution: Courtyard houses and ventilation</p>
<p>Why it worked: Natural airflow reduced heat</p>

</div>

<div class="card">

<h3>Ancient Egypt</h3>

<img src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Nile_River_and_farms.jpg">

<p>Problem: Farming in dry land</p>
<p>Solution: Nile irrigation system</p>
<p>Why it worked: Controlled seasonal water</p>

</div>

<div class="card">

<h3>Roman Aqueducts</h3>

<iframe width="100%" height="300"
src="https://www.youtube.com/embed/v1EdMt7Hs7E"
allowfullscreen></iframe>

<p>Romans used gravity to transport water efficiently.</p>

</div>
EOF

# =========================
# SINGAPORE
# =========================
cat > singapore.html << 'EOF'
<h2>Singapore's Challenges</h2>

<div class="card">
<img src="https://upload.wikimedia.org/wikipedia/commons/1/1c/Singapore_skyline_2020.jpg">
<p>Urban heat island effect</p>
</div>

<div class="card">
<p>Sea level rise and flooding risks</p>
</div>

<div class="card">
<p>Water management issues</p>
</div>
EOF

# =========================
# SOLUTION
# =========================
cat > solution.html << 'EOF'
<h2>Proposed Solution</h2>

<div class="card">

<h3>Inspired by Ancient Egypt</h3>

<img src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Nile_River_and_farms.jpg">

<p>Problem: Managing heavy rainfall in Singapore</p>

<p>Solution: Improve drainage and integrate water storage systems</p>

<p>Why it works: Builds on existing infrastructure</p>

</div>
EOF

# =========================
# REFLECTION
# =========================
cat > reflection.html << 'EOF'
<h2>Reflection</h2>

<div class="card">
We learned that ancient ideas are simple but effective.
</div>

<div class="card">
We realized many modern problems already existed in the past.
</div>

<div class="card">
We could improve by adding more Singapore-based examples.
</div>
EOF

# =========================
# CSS
# =========================
cat > css/style.css << 'EOF'
body{
font-family: Arial;
margin:0;
background:#f4f7f4;
}

nav ul{
display:flex;
flex-wrap:wrap;
gap:10px;
list-style:none;
padding:10px;
background:#1b5e20;
}

nav a{
color:white;
text-decoration:none;
}

.hero{
padding:20px;
text-align:center;
}

.hero img{
width:100%;
border-radius:10px;
margin-top:10px;
}

.card{
background:white;
margin:15px;
padding:15px;
border-radius:10px;
box-shadow:0 2px 6px rgba(0,0,0,0.1);
}

.card img{
width:100%;
border-radius:10px;
margin-top:10px;
}

footer{
text-align:center;
padding:20px;
background:#1b5e20;
color:white;
}
EOF

# =========================
# JS
# =========================
cat > js/script.js << 'EOF'
console.log("Website loaded");
EOF

echo "DONE - Clean root GitHub Pages website generated"