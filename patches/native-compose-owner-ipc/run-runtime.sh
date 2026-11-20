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

# Re-run the original signed UI instrumentation against the IPC-enabled APK.
if [[ "${CP_REAL_OWNER_UI_GATE:-0}" == 1 ]]; then
    # Committed fixtures are allowed only on the disposable, offline API35 emulator.
    test "$(adb shell getprop ro.kernel.qemu | tr -d '\r')" = 1
    test "$(adb shell getprop ro.build.version.sdk | tr -d '\r')" = 35
    adb shell cmd connectivity airplane-mode enable
    adb shell svc wifi disable
    adb shell svc data disable
    test "$(adb shell settings get global airplane_mode_on | tr -d '\r')" = 1
    EXTRA=()
    if [[ "${CP_X86_REMUX_GATE:-0}" == 1 ]]; then
        bash patches/native-compose-owner-ipc/setup-remux.sh
        EXTRA=(-e remux_ui true)
    fi
    # Save an independent live log before instrumentation; terminal output can
    # remain empty if the host timeout kills am instrument. Preserve failure.
    adb logcat -v threadtime -T 1 -s CPNativeGate:I CPNativeUi:I AndroidRuntime:E ActivityManager:I ActivityTaskManager:I > "$OUT/report/live-owner-ui.txt" 2>&1 &
    UI_LOG_PID=$!
    capture_ui_exit() {
        local rc=$?
        trap - EXIT
        kill "$UI_LOG_PID" 2>/dev/null || true
        wait "$UI_LOG_PID" 2>/dev/null || true
        timeout 20 adb logcat -d -b crash > "$OUT/report/owner-ui-crash.txt" 2>&1 || true
        timeout 20 adb shell dumpsys -t 8 activity lastanr > "$OUT/report/owner-ui-lastanr.txt" 2>&1 || true
        timeout 20 adb shell dumpsys -t 8 window displays > "$OUT/report/owner-ui-window.txt" 2>&1 || true
        if [[ "$rc" != 0 ]]; then
            grep -E 'CP_NATIVE_GATE_STAGE|CP_REMUX_|CP_NATIVE_GATE_FAILURE_STAGE|FATAL EXCEPTION|ANR in com.cinemana.pro' "$OUT/report/live-owner-ui.txt" | tail -100 || true
        fi
        exit "$rc"
    }
    trap capture_ui_exit EXIT
    timeout --kill-after=10s 540 adb shell am instrument -w -r -e renderer true -e owner_ui true -e populated_ui true -e pressure_ui true "${EXTRA[@]}" cp.nativegate.test/.GateInstrumentation | tee "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_OWNER_COMPOSE_UI_PASS owner=' "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_OWNER_COMPOSE_POPULATED_PASS rows=4 progress=250,750 collision=1 missing=1 cleanup=verified serial=5' "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_OWNER_PRESSURE_IDLE ' "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_OWNER_PRESSURE_LOAD ' "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_OWNER_PRESSURE_PASS rows=452 page=24 actions=16 cleanup=verified serial=23' "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_DOWNLOAD_PRESENTATION_PASS titles=verified progress=25,75 completion=transport_only conflict=verified cleanup=verified' "$OUT/report/compose-owner-ui.txt"
    grep -F 'CP_REAL_DOWNLOAD_AUTO_REFRESH_PASS progress=25,75 empty=observed manualClicks=0 close=verified noPollAfterClose=11500ms' "$OUT/report/compose-owner-ui.txt"
    if [[ "${CP_X86_REMUX_GATE:-0}" == 1 ]]; then
        grep -F 'CP_X86_REMUX_UI_PASS workers=3 growth=verified exits=0,0,0 actions=16' "$OUT/report/compose-owner-ui.txt"
        grep -F 'CP_X86_REMUX_CLEANUP_PASS' "$OUT/report/compose-owner-ui.txt"
        grep -F 'CP_X86_REMUX_COMBINED_PASS rows=452 page=24 workers=3 batches=verified actions=8' "$OUT/report/compose-owner-ui.txt"
        adb logcat -d -s CPNativeGate:I '*:S' > "$OUT/report/remux/frame-log.txt"
        bash patches/native-compose-owner-ipc/collect-remux.sh
    fi
    grep -E 'INSTRUMENTATION_CODE: -1' "$OUT/report/compose-owner-ui.txt"
    if grep -Eq 'CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$OUT/report/compose-owner-ui.txt"; then exit 1; fi
fi
