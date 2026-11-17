#!/usr/bin/env bash
# Builds the example web app for Cloudflare Pages.
#
# Cloudflare Pages settings:
#   Build command:          chmod +x cloudflare_pages.sh && ./cloudflare_pages.sh
#   Build output directory: example/build/web
set -euo pipefail

FLUTTER_BRANCH="${FLUTTER_BRANCH:-stable}"
FLUTTER_DIR="${FLUTTER_DIR:-$HOME/flutter-sdk}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "▶ Fetching Flutter SDK ($FLUTTER_BRANCH)"
if [ ! -x "$FLUTTER_DIR/bin/flutter" ]; then
  git clone -b "$FLUTTER_BRANCH" --depth 1 \
    https://github.com/flutter/flutter.git "$FLUTTER_DIR"
fi
export PATH="$FLUTTER_DIR/bin:$PATH"
# the build runs as root and the SDK checkout may be owned by another user
git config --global --add safe.directory "$FLUTTER_DIR"
export CI=true
flutter --version

echo "▶ Resolving dependencies (pub workspace)"
cd "$ROOT"
flutter pub get

echo "▶ Building Flutter web"
cd "$ROOT/example"
flutter build web --release --wasm

# No COOP/COEP headers on purpose: without cross-origin isolation the wasm
# build uses single-threaded skwasm, which keeps the flutter_map layers in sync
# with the MapLibre map (see .agents/decision.md).

echo "✅ Cloudflare Pages build finished successfully"
