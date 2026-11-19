#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-compose-lab"
adb install -r "$OUT/main.apk"
adb install -r "$OUT/test.apk"
adb logcat -c
adb shell am instrument -w -r com.alwansan.cinemana.composelab.test/androidx.test.runner.AndroidJUnitRunner | tee "$OUT/android-test-raw.txt"
tr -d '\r' < "$OUT/android-test-raw.txt" > "$OUT/android-test.txt"
adb logcat -d -s System.out:I | tee "$OUT/android-metrics.txt"
adb logcat -d -s AndroidRuntime:E | tee "$OUT/android-runtime.txt"
adb logcat -d -s CPComposeOwner:I | tee "$OUT/owner-fixture.txt"
grep -F 'CP_COMPOSE_OWNER_IPC_PASS' "$OUT/android-metrics.txt"
grep -F 'CP_COMPOSE_OWNER_TIMEOUT_DEATH_PASS' "$OUT/android-metrics.txt"
grep -F 'CP_COMPOSE_NATIVEUI_STARTUP_PASS' "$OUT/android-metrics.txt"
grep -F 'CP_OWNER_FIXTURE_DELAY_BEGIN' "$OUT/owner-fixture.txt"
grep -F 'CP_OWNER_FIXTURE_DELAY_END' "$OUT/owner-fixture.txt"
grep -F 'CP_COMPOSE_LAB_PASS' "$OUT/android-metrics.txt"
grep -F 'CP_COMPOSE_IDLE' "$OUT/android-metrics.txt"
grep -F 'CP_COMPOSE_LOAD' "$OUT/android-metrics.txt"
grep -Fx 'INSTRUMENTATION_CODE: -1' "$OUT/android-test.txt"
grep -F 'OK (1 test)' "$OUT/android-test.txt"
if grep -Eq 'FAILURES!!!|INSTRUMENTATION_FAILED|INSTRUMENTATION_ABORTED' "$OUT/android-test.txt"; then exit 1; fi
echo CP_COMPOSE_LAB_RELEASE_GATE_PASS
