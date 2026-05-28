#!/usr/bin/env bash
# Assemble slides/*.md into presentation.md.
#   ./build.sh         → just assemble
#   ./build.sh html    → also render HTML
#   ./build.sh pdf     → also render PDF
#   ./build.sh all     → assemble + HTML + PDF + per-slide PNGs in preview/

set -e
cd "$(dirname "$0")"

TEMPLATE="presentation.template.md"
OUTPUT="presentation.md"

awk '
  /^@@INCLUDE:.*@@$/ {
    f = $0
    sub(/^@@INCLUDE:/, "", f)
    sub(/@@$/, "", f)
    while ((getline line < f) > 0) print line
    close(f)
    next
  }
  { print }
' "$TEMPLATE" > "$OUTPUT"

echo "✓ assembled $OUTPUT"

MARP="npx --yes @marp-team/marp-cli@latest --theme-set themes/toolshell.css --allow-local-files --html"

case "${1:-}" in
  html)
    $MARP "$OUTPUT" -o presentation.html
    echo "✓ presentation.html"
    ;;
  pdf)
    $MARP "$OUTPUT" --pdf -o presentation.pdf
    echo "✓ presentation.pdf"
    ;;
  all)
    $MARP "$OUTPUT" -o presentation.html
    echo "✓ presentation.html"
    $MARP "$OUTPUT" --pdf -o presentation.pdf
    echo "✓ presentation.pdf"
    rm -rf preview
    $MARP "$OUTPUT" --images png -o preview/slide.png > /dev/null
    echo "✓ preview/*.png"
    ;;
esac
