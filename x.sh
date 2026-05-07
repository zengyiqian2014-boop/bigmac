#!/bin/bash

echo "🌿 Building stable 3-level system with UNIFORM content..."

rm -rf css js pages
rm -f index.html singapore.html solution.html reflection.html

mkdir -p css js pages/civilisations

# ================= CSS =================
cat > css/style.css << EOF
body{
margin:0;
font-family:Arial;
background:#f4f7f4;
}

header{
background:#0f3d2e;
color:white;
padding:15px;
}

nav ul{
list-style:none;
display:flex;
gap:15px;
padding:0;
}

nav a{
color:white;
text-decoration:none;
font-weight:bold;
}

.hero{
background:#2e7d32;
color:white;
padding:80px 20px;
text-align:center;
}

.card{
background:white;
margin:20px;
padding:20px;
border-radius:10px;
}

footer{
background:#0f3d2e;
color:white;
text-align:center;
padding:15px;
}
EOF

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

<header>
<nav>
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="civilisations/index.html">Ancient Civilisations</a></li>
<li><a href="singapore.html">Singapore</a></li>
<li><a href="solution.html">Solution</a></li>
<li><a href="reflection.html">Reflection</a></li>
</ul>
</nav>
</header>

<section class="hero">
<h1>Sustainability from Ancient Civilisations</h1>
<p>Learn how ancient systems solve modern problems</p>
</section>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= CIVILISATION INDEX =================
cat > pages/civilisations/index.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header>
<nav>
<ul>
<li><a href="/index.html">Home</a></li>
<li><a href="indus.html">Indus Valley</a></li>
<li><a href="egypt.html">Ancient Egypt</a></li>
<li><a href="rome.html">Roman Aqueducts</a></li>
</ul>
</nav>
</header>

<div class="hero">
<h1>Ancient Civilisations</h1>
<p>Select one civilisation</p>
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

# ================= 统一内容模板 =================
COMMON_CONTENT='
<h3>Problem</h3>
<p>Environmental challenges like heat, water shortage, and urban planning.</p>

<h3>Solution</h3>
<p>Use natural systems such as water flow, gravity, and climate design.</p>

<h3>Why it worked</h3>
<p>Because it reduces energy use and works with nature instead of against it.</p>
'

# ================= INDUS =================
cat > pages/civilisations/indus.html << EOF
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>

<header><a href="/index.html">Home</a> | <a href="/pages/civilisations/">Back</a></header>

<div class="hero"><h1>Indus Valley</h1></div>

<div class="card">
$COMMON_CONTENT
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

<header><a href="/index.html">Home</a> | <a href="/pages/civilisations/">Back</a></header>

<div class="hero"><h1>Ancient Egypt</h1></div>

<div class="card">
$COMMON_CONTENT
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

<header><a href="/index.html">Home</a> | <a href="/pages/civilisations/">Back</a></header>

<div class="hero"><h1>Roman Aqueducts</h1></div>

<div class="card">
$COMMON_CONTENT
</div>

<footer>© 2026 Made by Eric</footer>

</body>
</html>
EOF

echo "✅ DONE - 3-level structure + UNIFORM content system ready"