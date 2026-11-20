#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-real-owner-ipc"
adb install -r "$OUT/signed.apk"
adb install "$OUT/test-signed.apk"
python3 patches/native-compose-active-startup/smoke-active-legacy.py
adb shell am startservice -n com.cinemana.pro/cp.realowner.RealOwnerService > "$OUT/report/external-service.txt" 2>&1 || true
grep -Ei 'Permission Denial|not exported|SecurityException' "$OUT/report/external-service.txt"
adb shell content call --uri content://com.cinemana.pro.cp-real-owner-ipc-probe --method probe > "$OUT/report/external-provider.txt" 2>&1 || true
grep -Ei 'Permission Denial|not exported|SecurityException' "$OUT/report/external-provider.txt"
timeout 150 adb shell am instrument -w -r cp.ipcprobe/.IpcProbe | tee "$OUT/report/instrumentation.txt"
grep -F 'CP_REAL_OWNER_IPC_PASS owner=' "$OUT/report/instrumentation.txt"
grep -E 'INSTRUMENTATION_CODE: -1' "$OUT/report/instrumentation.txt"
if grep -Eq 'CP_REAL_OWNER_IPC_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$OUT/report/instrumentation.txt"; then exit 1; fi
adb logcat -d -b crash > "$OUT/report/crash.txt"
