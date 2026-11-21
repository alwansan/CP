#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-real-owner"
# This fixture must never run against a physical device or user data.
test "$(adb shell getprop ro.kernel.qemu | tr -d '\r')" = 1
test "$(adb shell getprop ro.build.version.sdk | tr -d '\r')" = 35
adb install "$OUT/probe.apk"
timeout 120 adb shell am instrument -w -r -e rollback_fixture true cp.ownerprobe/com.shabakaty.cinemana.htmlbridge.model.OwnerProbe | tee "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_ROOM_READ_PASS pid=' "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_ROOM_POPULATED_PASS rows=49 pages=3 size=24,24,1 rollback=verified no_transport_rows=49' "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_KEYS_SHIFT_PASS rows=49 shiftedIndex=1 stable=verified readerIsolation=verified rollback=verified' "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_TRANSFER_PASS rows=7 transport=5 progress=250,750 conflicts=2 missing=2 rollback=verified' "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_TASK_COLLISION_PASS limit=2 conflict=1 rollback=verified' "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_TRANSFER_BATCH_PASS tasks=24 limitPerTask=2 thirdDuplicate=isolated rollback=verified' "$OUT/report/instrumentation.txt"
grep -E 'INSTRUMENTATION_CODE: -1' "$OUT/report/instrumentation.txt"
if grep -Eq 'CP_REAL_OWNER_ROOM_READ_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$OUT/report/instrumentation.txt"; then exit 1; fi
adb uninstall cp.ownerprobe
