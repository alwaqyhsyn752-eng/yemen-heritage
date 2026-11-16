#!/data/data/com.termux/files/usr/bin/bash
set -e
cd "$(dirname "$0")/.."

echo "== Checking required files =="
for f in index.html package.json src/css/style.css src/js/main.js; do
  if [ -f "$f" ]; then
    echo "OK       $f"
  else
    echo "MISSING  $f"
    exit 1
  fi
done

echo "== JS syntax check =="
node --check src/js/main.js && echo "JS OK"

echo "== package.json parse =="
node -e "JSON.parse(require('fs').readFileSync('package.json','utf8')); console.log('package.json OK')"

echo "== All checks passed =="
