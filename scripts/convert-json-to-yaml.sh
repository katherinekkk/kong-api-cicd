#!/bin/bash
set -e

echo "🔄 Converting JSON → YAML"

for file in apis/*.json; do
  name=$(basename "$file" .json)
  echo "Processing $file → apis/$name.yaml"
  yq -P "$file" > "apis/$name.yaml"
done

echo "✅ Conversion completed successfully"
