#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-real-owner"
adb install "$OUT/probe.apk"
timeout 90 adb shell am instrument -w -r cp.ownerprobe/.OwnerProbe | tee "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_ROOM_READ_PASS pid=' "$OUT/report/instrumentation.txt"
grep -E 'INSTRUMENTATION_CODE: -1' "$OUT/report/instrumentation.txt"
if grep -Eq 'CP_REAL_OWNER_ROOM_READ_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$OUT/report/instrumentation.txt"; then exit 1; fi
adb uninstall cp.ownerprobe
