#!/bin/bash

# Exit on any error
set -e

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
  echo "Error: ImageMagick 'convert' command not found."
  exit 1
fi

# Output folder (optional)
output_dir="thumbnails"
mkdir -p "$output_dir"

# Process all PDF files in the current directory
for pdf in *.pdf; do
  [ -e "$pdf" ] || continue

  base="${pdf%.pdf}"
  output="${output_dir}/${base}.jpg"

  echo "Generating thumbnail for: $pdf → $output"

  # Convert first page, resize to 800px wide, remove alpha, set background white, compress
  convert \
    -density 150 "${pdf}[0]" \
    -thumbnail 800x800 \
    -background white -alpha remove \
    -strip \
    -quality 60 \
    "$output"
done

echo "All thumbnails saved to ./$output_dir"

