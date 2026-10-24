#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
JAVA_BIN="${JAVA_BIN:-java}"
APKTOOL="$ROOT/tools/apktool_2.12.1.jar"
FRAME_DIR="$ROOT/tools/framework"
APP_DIR="$ROOT/app"
OUT_DIR="$ROOT/output"
UNSIGNED="$OUT_DIR/Cinemana_PATCH252_unsigned.apk"
mkdir -p "$OUT_DIR"
if ! command -v "$JAVA_BIN" >/dev/null 2>&1; then
  echo "ERROR: Java was not found. Install Java and/or set JAVA_BIN." >&2
  exit 1
fi
if [[ ! -f "$APKTOOL" || ! -f "$FRAME_DIR/1.apk" || ! -f "$APP_DIR/apktool.yml" ]]; then
  echo "ERROR: Missing project or bundled build tool. Re-extract the complete ZIP." >&2
  exit 1
fi
echo "Building project: $APP_DIR"
"$JAVA_BIN" -jar "$APKTOOL" b -f -p "$FRAME_DIR" -o "$UNSIGNED" "$APP_DIR"
echo
echo "Build completed: $UNSIGNED"
echo "This APK is unsigned. Sign it with apksigner before installing."
if command -v sha256sum >/dev/null 2>&1; then sha256sum "$UNSIGNED"; fi
