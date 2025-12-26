#!/bin/bash
set -e

echo "Validating JSON files in /apis directory..."

for file in apis/*.json; do
  echo "Checking $file"
  jq . "$file" > /dev/null
done

echo "JSON validation successful"
