#!/usr/bin/env bash
# Build the handbook locally and apply post-build fixups.
#
# Usage:
#   ./build.sh            # local build, clean URLs rooted at /
#   BASE_URL=/The-FAIR-Handbook ./build.sh   # mimic GitHub Pages subpath
#
# Mirrors .github/workflows/deploy.yml so local builds behave like the
# deployed site.
set -euo pipefail

cd "$(dirname "$0")/The-FAIR-Handbook"

jupyter-book build --html

# Use python3 if present, else python (CI's setup-python provides `python`).
PYTHON=$(command -v python3 || command -v python)

# Fix index-page search results: MyST records the index page under its slug
# (e.g. /intro1) in myst.search.json, but that page is served at the site root
# (no /intro1/ directory exists), so clicking those search hits 404s. Rewrite
# the index slug's URLs to the root so they resolve.
"$PYTHON" - <<'PY'
import json, pathlib
html = pathlib.Path("_build/html")
index_slug = json.loads((html / "config.json").read_text())["projects"][0]["index"]
prefix = "/" + index_slug
p = html / "myst.search.json"
data = json.loads(p.read_text())
n = 0
for r in data["records"]:
    u = r.get("url", "")
    if u == prefix or u.startswith(prefix + "#"):
        r["url"] = "/" + u[len(prefix):].lstrip("/")
        n += 1
p.write_text(json.dumps(data))
print(f"Rewrote {n} index-slug ('{index_slug}') search URLs to root.")
PY

# Relabel search results with their subsection instead of the page title.
# Inline the script into every page's <head> as a synchronous (non-deferred)
# tag. The SPA's hydration reconciles the whole document and strips foreign
# <script> nodes (both in <body> and <head>), but a synchronous head script
# *executes during parse*, before hydration runs — so its MutationObserver is
# installed and keeps working even after the node itself is removed.
BASE_URL="${BASE_URL:-}" "$PYTHON" - <<'PY'
import pathlib
js = pathlib.Path("search-subsection-label.js").read_text()
tag = "<script>\n" + js + "\n</script>"
html = pathlib.Path("_build/html")
n = 0
for page in html.rglob("index.html"):
    text = page.read_text()
    if "search-subsection-label" in text:
        continue
    if "</head>" in text:
        page.write_text(text.replace("</head>", tag + "</head>", 1))
        n += 1
print(f"Inlined search-subsection-label.js into {n} page(s).")
PY

echo "Build complete: The-FAIR-Handbook/_build/html"
