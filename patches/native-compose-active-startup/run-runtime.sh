#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-nativeui-gate"
REPORT="$OUT/report"
mkdir -p "$REPORT"
# Capture the actual failing interval, including renderer exceptions and window changes.
adb logcat -v threadtime -s AndroidRuntime:E ActivityManager:I ActivityTaskManager:I WindowManager:I CPNativeGate:I CPNativeUi:I > "$REPORT/live-gate-logcat.txt" 2>&1 &
LOG_PID=$!
cleanup() {
    rc=$?
    trap - EXIT
    kill "$LOG_PID" 2>/dev/null || true
    wait "$LOG_PID" 2>/dev/null || true
    timeout 30 adb logcat -d -b crash > "$REPORT/gate-crash.txt" 2>&1 || true
    timeout 30 adb shell dumpsys window displays > "$REPORT/gate-window.txt" 2>&1 || true
    timeout 30 adb shell dumpsys activity activities > "$REPORT/gate-activity.txt" 2>&1 || true
    timeout 30 adb shell dumpsys activity lastanr > "$REPORT/gate-lastanr.txt" 2>&1 || true
    if [[ "$rc" != 0 ]]; then
        tail -120 "$REPORT/live-gate-logcat.txt" || true
        cat "$REPORT/gate-crash.txt" || true
    fi
    exit "$rc"
}
trap cleanup EXIT
adb install -r "$OUT/gate-signed.apk"
adb install "$OUT/test-signed.apk"
python3 patches/native-compose-active-startup/smoke-active-legacy.py
# Check that a non-privileged external launch cannot open the private activity.
adb shell am start -n com.cinemana.pro/cp.nativegate.NativeGateActivity > "$OUT/report/external-launch.txt" 2>&1 || true
grep -Ei 'Permission Denial|not exported|SecurityException' "$OUT/report/external-launch.txt"
# The original app's signed instrumentation runs under its own UID.
EXTRA=()
if [[ "${CP_RENDERER_GATE:-0}" == 1 ]]; then
    adb shell am start -n com.cinemana.pro/com.alwansan.cinemana.composelab.NativeUiProbeActivity > "$OUT/report/external-renderer-launch.txt" 2>&1 || true
    grep -Ei 'Permission Denial|not exported|SecurityException' "$OUT/report/external-renderer-launch.txt"
    EXTRA=(-e renderer true)
fi
timeout 240 adb shell am instrument -w -r "${EXTRA[@]}" cp.nativegate.test/.GateInstrumentation | tee "$OUT/report/instrumentation.txt"
grep -F 'CP_NATIVEUI_FACTORY_IN_PACKAGE_PASS main=' "$OUT/report/instrumentation.txt"
grep -E 'INSTRUMENTATION_CODE: -1' "$OUT/report/instrumentation.txt"
if grep -qE 'CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$OUT/report/instrumentation.txt"; then exit 1; fi

if [[ "${CP_RENDERER_GATE:-0}" == 1 ]]; then grep -F 'CP_SAME_PACKAGE_COMPOSE_RENDER_PASS main=' "$OUT/report/instrumentation.txt"; fi
