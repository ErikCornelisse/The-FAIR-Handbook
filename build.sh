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

echo "Build complete: The-FAIR-Handbook/_build/html"
