#!/usr/bin/env bash
# 打包可上传 Chrome Web Store 的 zip（不含 docs / .git / 源素材）
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

VERSION="$(python3 -c "import json; print(json.load(open('manifest.json'))['version'])")"
OUT_DIR="$ROOT/dist"
OUT_ZIP="$OUT_DIR/work-encouragement-extension-v${VERSION}.zip"

mkdir -p "$OUT_DIR"
rm -f "$OUT_ZIP"

zip -r "$OUT_ZIP" \
  manifest.json \
  background.js \
  popup.html popup.css popup.js \
  options.html options.css options.js \
  dashboard.html dashboard.css dashboard.js \
  lib \
  icons \
  _locales \
  LICENSE \
  -x "*.DS_Store" "icons/icon.svg"

echo "Packed: $OUT_ZIP ($(du -h "$OUT_ZIP" | awk '{print $1}'))"
unzip -l "$OUT_ZIP"
