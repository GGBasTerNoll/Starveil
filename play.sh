#!/bin/sh
cd "$(dirname "$0")" || exit 1
if ! command -v node >/dev/null 2>&1; then
  echo "Нужен Node.js: https://nodejs.org"
  exit 1
fi
if [ ! -d node_modules ]; then
  echo "Ставлю зависимости…"
  npm install
fi
exec node scripts/play.mjs
