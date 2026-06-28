#!/usr/bin/env bash
# The "build" the required CI check runs: marker.txt must contain exactly "ok".
set -euo pipefail
[ "$(cat marker.txt)" = "ok" ] || { echo "::error::marker.txt is not 'ok'"; exit 1; }
echo "check passed"
