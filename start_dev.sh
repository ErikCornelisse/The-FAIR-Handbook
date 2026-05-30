#!/usr/bin/env bash
# Start the MyST live dev server for the fast edit/preview loop.
#
# Usage:
#   ./start_dev.sh             # serve on the default port (3000)
#   ./start_dev.sh --port 4000 # any jupyter-book start flags are passed through
#
# NOTE: this is the *dev server*. It does NOT apply build.sh's fixups
# (search-subsection labels, index-page anchor fix, BASE_URL), so search/anchor
# behaviour will differ from production. To preview the real deployed behaviour,
# use ./serve.sh (or ./build.sh and serve _build/html). See README.
set -euo pipefail

cd "$(dirname "$0")/The-FAIR-Handbook"

# jupyter-book start spawns a Node server (node ./server.js) and tends to leave
# it running when interrupted, piling up idle servers. Snapshot the existing
# ones, then on exit (Ctrl+C) kill only the one we spawned — leaving any other
# dev server untouched.
servers_before=$(pgrep -f "node ./server.js" || true)
cleanup() {
  local after pid
  after=$(pgrep -f "node ./server.js" || true)
  for pid in $after; do
    echo "$servers_before" | grep -qx "$pid" || kill "$pid" 2>/dev/null || true
  done
}
trap cleanup INT TERM EXIT

jupyter-book start "$@"
