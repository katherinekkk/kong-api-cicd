#!/bin/bash
set -e

mkdir -p output

for file in apis/*.json; do
  name=$(basename "$file" .json)
  yq -P "$file" > output/$name.yaml
done

echo "Conversion completed"
