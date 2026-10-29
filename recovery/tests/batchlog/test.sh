#!/usr/bin/env bash
set -euo pipefail
repo="$(git rev-parse --show-toplevel)"
target="$repo/recovery/tests/batchlog/build"
mkdir -p "$target"
mapfile -d '' stubs < <(find "$repo/recovery/tests/batchlog/stubs" -name '*.java' -print0)
javac -encoding UTF-8 -d "$target" \
  "$repo/recovery/generated/java/com/shabakaty/cinemana/ca1/BatchLog.java" \
  "$repo/recovery/tests/batchlog/BatchLogTest.java" \
  "${stubs[@]}"
java -cp "$target" com.shabakaty.cinemana.ca1.BatchLogTest
