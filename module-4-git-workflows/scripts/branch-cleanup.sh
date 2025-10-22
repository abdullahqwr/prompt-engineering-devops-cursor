#!/usr/bin/env bash
# Delete merged local branches except main and develop
set -euo pipefail

git fetch --prune
for b in $(git branch --merged | grep -v "\(main\|develop\)" | sed 's/\*//'); do
  git branch -d "$b" || true
done

echo "Cleanup complete"
