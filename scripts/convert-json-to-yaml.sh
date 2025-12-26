#!/bin/bash
set -e

echo "Converting JSON to YAML..."

for file in apis/*.json; do
  filename=$(basename "$file" .json)
  yq -P "$file" > "apis/$filename.yaml"
  echo "Created apis/$filename.yaml"
done
