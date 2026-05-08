#!/bin/bash

echo "🌿 Building FINAL GREEN + ST STEPHEN CREST WEBSITE..."

# =========================
# CLEAN
# =========================
rm -rf css js civilisations
rm -f *.html

mkdir css
mkdir js
mkdir civilisations

# =========================
# CSS (绿色高级 + 校徽感)
# =========================
cat > css/style.css << 'EOF'
body{
    margin:0;
    font-family:Arial,sans-serif;
    background:#f4f7f4;
    color:#222;
}

/* 顶部导航 */
header{
    background:#0f3d2e;
    padding:12px 25px;
}

/* nav */
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
    font-size:17px;
}

/* 🌿 HERO（高级绿色） */
.hero{
    position:relative;
    background:
    linear-gradient(135deg, rgba(15,61,46,0.8), rgba(27,94,32,0.8)),
    url('https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1600&q=80');

    background-size:cover;
    background-position:center;

    color:white;
    text-align:center;
    padding:150px 20px;
}

/* 校徽风水印（参考 St Stephen crest 风格结构） */
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
    background-repeat:no-repeat;
    opacity:0.10;
    pointer-events:none;
}

.hero h1{
    font-size:64px;
    margin-bottom:15px;
}

.hero h2{
    font-size:26px;
    font-weight:300;
}

/* 第二条绿色横条 */
.subbar{
    background:linear-gradient(90deg,#0f3d2e,#1b5e20);
    color:white;
    text-align:center;
    padding:14px;
}

/* 内容区 */
.content{
    max-width:1100px;
    margin:40px auto;
    background:white;
    padding:35px;
    border-radius:18px;
    box-shadow:0 6px 25px rgba(0,0,0,0.1);
    line-height:1.8;
    font-size:18px;
}

/* 卡片 */
.card-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
}

.card{
    background:#fff;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 4px 18px rgba(0,0,0,0.08);
}

.card img{
    width:100%;
    height:180px;
    object-fit:cover;
}

.card-content{
    padding:18px;
}

/* footer */
footer{
    background:#0f3d2e;
    color:white;
    text-align:center;
    padding:18px;
    margin-top:50px;
}
EOF

# =========================
# JS
# =========================
cat > js/script.js << 'EOF'
console.log("Final St Stephen Green Crest Loaded");
EOF

# =========================
# INDEX
# =========================
cat > index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>St Stephen Sustainability Project</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/bigmac/index.html">Home</a></li>
<li><a href="/bigmac/civilisations/index.html">Civilisations</a></li>
<li><a href="/bigmac/about.html">About</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>St Stephen Inspired Project</h1>
<h2>Green Sustainability • Faith • Learning</h2>
</div>

<div class="subbar">
Credere et Servire • Learning from Ancient Systems
</div>

<div class="content">

<h2>Project Overview</h2>
<p>
This project is inspired by St. Stephen’s School values, combining sustainability, history, and modern urban thinking.
</p>

<h2>School Crest Inspiration</h2>
<p>
The design reflects the ideas behind the St. Stephen’s School crest: faith, growth, and service.
Green represents growth and sustainability, while structure represents discipline and learning.
</p>

<h2>Learning Goals</h2>
<ul>
<li>Understand ancient civilisations</li>
<li>Compare sustainable systems</li>
<li>Apply ideas to modern Singapore</li>
<li>Develop reflection and analysis skills</li>
</ul>

</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# =========================
# PAGE FUNCTION
# =========================
page () {
FILE=$1
TITLE=$2
TEXT=$3

cat > $FILE << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$TITLE</title>
<link rel="stylesheet" href="/bigmac/css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/bigmac/index.html">Home</a></li>
<li><a href="/bigmac/civilisations/index.html">Civilisations</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>$TITLE</h1>
</div>

<div class="subbar">
St Stephen Green Academic Theme
</div>

<div class="content">
<p>$TEXT</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF
}

# =========================
# PAGES
# =========================
page "about.html" "About" "St Stephen inspired sustainability learning project."
page "singapore.html" "Singapore Challenges" "Urban sustainability and water management issues."
page "solution.html" "Solution" "Ancient systems applied to modern cities."
page "reflection.html" "Reflection" "Learning from history to improve the future."

# =========================
# CIVILISATIONS INDEX
# =========================
cat > civilisations/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Civilisations</title>
<link rel="stylesheet" href="/bigmac/css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/bigmac/index.html">Home</a></li>
<li><a href="/bigmac/civilisations/index.html">Civilisations</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
</div>

<div class="subbar">
Select a civilisation
</div>

<div class="content">
<ul>
<li><a href="/bigmac/civilisations/indus.html">Indus Valley</a></li>
<li><a href="/bigmac/civilisations/egypt.html">Ancient Egypt</a></li>
<li><a href="/bigmac/civilisations/rome.html">Roman Aqueducts</a></li>
</ul>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# =========================
# DETAIL PAGES
# =========================
page "civilisations/indus.html" "Indus Valley" "Advanced drainage and urban planning system."
page "civilisations/egypt.html" "Ancient Egypt" "Nile-based irrigation system supporting agriculture."
page "civilisations/rome.html" "Roman Aqueducts" "Gravity-based water engineering system."

echo "✅ FINAL BUILD COMPLETE"
echo "🚀 git add ."
echo "🚀 git commit -m 'final st stephen green crest version'"
echo "🚀 git push"