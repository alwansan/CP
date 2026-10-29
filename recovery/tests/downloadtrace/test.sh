#!/usr/bin/env bash
set -euo pipefail
repo="$(git rev-parse --show-toplevel)"
target="$repo/recovery/tests/downloadtrace/build"
mkdir -p "$target"
javac -encoding UTF-8 -d "$target" \
  "$repo/recovery/generated/java/com/shabakaty/cinemana/features/DownloadTrace.java" \
  "$repo/recovery/tests/downloadtrace/DownloadTraceTest.java" \
  "$repo/recovery/tests/downloadtrace/stubs/com/shabakaty/cinemana/local/ExpiredLink269.java" \
  "$repo/recovery/tests/batchlog/stubs/android/content/Context.java" \
  "$repo/recovery/tests/batchlog/stubs/android/os/Environment.java" \
  "$repo/recovery/tests/batchlog/stubs/android/os/Process.java" \
  "$repo/recovery/tests/batchlog/stubs/com/liulishuo/filedownloader/BuildConfig.java" \
  "$repo/recovery/tests/batchlog/stubs/com/shabakaty/cinemana/ca1/Log94.java"
java -cp "$target" com.shabakaty.cinemana.features.DownloadTraceTest
