#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-native-ui-lab"
adb install "$OUT/main.apk"
adb install "$OUT/test.apk"
adb shell am instrument -w -r com.alwansan.cinemana.nativeuilab.test/.NativeLabTest | tee "$OUT/android-test-raw.txt"
tr -d '\r' < "$OUT/android-test-raw.txt" > "$OUT/android-test.txt"
grep -Fx CP_NATIVE_UI_LAB_PASS "$OUT/android-test.txt"
grep -F CP_NATIVE_UI_IDLE "$OUT/android-test.txt"
grep -F CP_NATIVE_UI_LOAD "$OUT/android-test.txt"
test "$(grep -c '^INSTRUMENTATION_CODE:' "$OUT/android-test.txt")" -eq 1
grep -Fx 'INSTRUMENTATION_CODE: -1' "$OUT/android-test.txt"
if grep -Eq 'CP_NATIVE_UI_LAB_FAIL|INSTRUMENTATION_FAILED|INSTRUMENTATION_ABORTED' "$OUT/android-test.txt"; then exit 1; fi
echo CP_NATIVE_UI_LAB_RELEASE_GATE_PASS
