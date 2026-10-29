#!/usr/bin/env bash
set -euo pipefail
repo="$(git rev-parse --show-toplevel)"
mkdir -p "$repo/recovery/tests/workfolders/build"
javac -encoding UTF-8 -d "$repo/recovery/tests/workfolders/build" \
  "$repo/recovery/generated/java/com/shabakaty/cinemana/ca1/WorkFolders104.java" \
  "$repo/recovery/tests/workfolders/stubs/com/shabakaty/cinemana/ca1/Continue106.java" \
  "$repo/recovery/tests/workfolders/stubs/com/shabakaty/cinemana/ca1/Enhancements.java" \
  "$repo/recovery/tests/workfolders/stubs/com/shabakaty/cinemana/ca1/Restart108.java" \
  "$repo/recovery/tests/workfolders/stubs/com/liulishuo/filedownloader/BuildConfig.java" \
  "$repo/recovery/tests/workfolders/WorkFolders104Test.java"
java -cp "$repo/recovery/tests/workfolders/build" com.shabakaty.cinemana.ca1.WorkFolders104Test
