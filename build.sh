#!/usr/bin/env bash
# Builds presentation.md by inlining each slide file referenced in presentation.template.md.
# Each slide lives in slides/*.md so they can be edited individually.
# After running this, render with:  marp presentation.md --html --allow-local-files

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

echo "Built $OUTPUT from $TEMPLATE"
echo "Render with:  marp $OUTPUT --html --theme-set themes/toolshell.css"
echo "Or to PDF:    marp $OUTPUT --pdf --html --allow-local-files --theme-set themes/toolshell.css"
