#!/usr/bin/env bash
# Builds the example web app for Cloudflare (Workers Builds / Pages).
#
# Cloudflare's build image does not contain Flutter, so this script installs
# the Flutter SDK first. The output is written to example/build/web, which is
# served by wrangler.jsonc.
set -euo pipefail

FLUTTER_VERSION="${FLUTTER_VERSION:-3.47.9}"
FLUTTER_DIR="${FLUTTER_DIR:-$HOME/flutter-sdk}"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ ! -x "$FLUTTER_DIR/bin/flutter" ]; then
  git clone --depth 1 --branch "$FLUTTER_VERSION" \
    https://github.com/flutter/flutter.git "$FLUTTER_DIR"
fi
export PATH="$FLUTTER_DIR/bin:$PATH"
# the build runs as root and the checkout is owned by another user
git config --global --add safe.directory "$FLUTTER_DIR"
export CI=true

flutter --version
flutter config --no-analytics >/dev/null 2>&1 || true

cd "$ROOT"
# resolves the pub workspace (root pubspec.yaml)
flutter pub get
cd example
flutter build web --release
