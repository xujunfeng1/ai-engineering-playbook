#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
FAILED=0

echo "Checking test naming under: $ROOT"

while IFS= read -r -d '' file; do
  name="$(basename "$file")"

  if [[ "$name" == *IT.java || "$name" == *Test.java ]]; then
    :
  else
    echo "[invalid-test-name] $file should end with Test.java or IT.java"
    FAILED=1
  fi

  if grep -q "org.junit.runner.RunWith\\|SpringRunner\\|org.junit.Test" "$file"; then
    echo "[junit4-reference] $file contains JUnit 4 style references"
    FAILED=1
  fi

  if ! grep -q "^package " "$file"; then
    echo "[missing-package] $file has no package declaration"
    FAILED=1
  fi
done < <(find "$ROOT" -type f \( -name "*Test.java" -o -name "*IT.java" -o -path "*/src/test/*/*.java" \) -print0)

if [[ "$FAILED" -ne 0 ]]; then
  echo "Test naming check failed."
  exit 1
fi

echo "Test naming check passed."
