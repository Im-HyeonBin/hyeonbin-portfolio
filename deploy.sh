#!/usr/bin/env bash
# Stage only the public files, then upload them to Cloudflare Pages.
set -euo pipefail
cd "$(dirname "$0")"

OUT="$(mktemp -d)"
trap 'rm -rf "$OUT"' EXIT

cp index.html avatar.jpg favicon.png robots.txt cv.html cv.pdf _headers "$OUT"/
npx --yes wrangler pages deploy "$OUT" --project-name hyeonbin-portfolio --branch main
