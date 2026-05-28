#!/usr/bin/env bash
# Assemble slides/*.md into presentation.md.
# Run with no args to just assemble; pass `all` to also render HTML, PDF and previews.

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

if [[ "${1:-}" == "all" ]]; then
  MARP="npx --yes @marp-team/marp-cli@latest"
  $MARP "$OUTPUT" -o presentation.html
  echo "✓ presentation.html"
  $MARP "$OUTPUT" --pdf -o presentation.pdf
  echo "✓ presentation.pdf"
  rm -rf preview
  $MARP "$OUTPUT" --images png -o preview/slide.png > /dev/null
  echo "✓ preview/*.png"
fi
