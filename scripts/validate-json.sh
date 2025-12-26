#!/bin/bash
set -e

echo "Validating JSON files..."

for file in apis/*.json; do
  echo "Checking $file"
  jq empty "$file"
done

echo "JSON validation successful"
