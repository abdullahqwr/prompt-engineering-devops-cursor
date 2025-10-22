#!/usr/bin/env bash
# Simple health check script
set -euo pipefail
URL=${1:-http://localhost:3000/health}

if curl -fsS "$URL" >/dev/null; then
  echo "Healthcheck passed: $URL"
  exit 0
else
  echo "Healthcheck failed: $URL"
  exit 2
fi
