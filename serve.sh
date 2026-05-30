#!/usr/bin/env bash
# Build the site with the production fixups and serve it locally — a single
# command to preview exactly what gets deployed (search/anchor behaviour
# included). Unlike ./start.sh (the live dev server), this serves the static
# _build/html that ./build.sh produces.
#
# Usage:
#   ./serve.sh           # build, then serve on http://localhost:8000
#   ./serve.sh 9000      # use a different port
#
# Note: this serves at the site root (/). To preview the GitHub Pages subpath
# instead, build with `BASE_URL=/The-FAIR-Handbook ./build.sh` and serve it
# under that path (see README).
set -euo pipefail

cd "$(dirname "$0")"
PORT="${1:-8000}"

# Force a root-relative build so assets resolve when served at "/".
unset BASE_URL
./build.sh

echo
echo "Serving production build at http://localhost:${PORT}/  (Ctrl+C to stop)"
exec python3 -m http.server -d The-FAIR-Handbook/_build/html "$PORT"
