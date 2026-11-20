#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-nativeui-gate"
adb install -r "$OUT/gate-signed.apk"
adb install "$OUT/test-signed.apk"
python3 patches/native-compose-active-startup/smoke-active-legacy.py
# Check that a non-privileged external launch cannot open the private activity.
adb shell am start -n com.cinemana.pro/cp.nativegate.NativeGateActivity > "$OUT/report/external-launch.txt" 2>&1 || true
grep -Ei 'Permission Denial|not exported|SecurityException' "$OUT/report/external-launch.txt"
# The original app's signed instrumentation runs under its own UID.
timeout 150 adb shell am instrument -w -r cp.nativegate.test/.GateInstrumentation | tee "$OUT/report/instrumentation.txt"
grep -F 'CP_NATIVEUI_FACTORY_IN_PACKAGE_PASS main=' "$OUT/report/instrumentation.txt"
grep -E 'INSTRUMENTATION_CODE: -1' "$OUT/report/instrumentation.txt"
if grep -qE 'CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$OUT/report/instrumentation.txt"; then exit 1; fi
