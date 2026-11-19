#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-html-preview"
adb install "$OUT/main.apk"
adb install "$OUT/test.apk"
adb logcat -c
# -r exposes the raw instrumentation result code. Without -r, am
# prints only the stream and the previous gate could never see the code.
adb shell am instrument -w -r com.alwansan.cinemana.htmlpreview.test/.PreviewTest | tee "$OUT/android-test-raw.txt"
adb logcat -d -s CPPreview:I chromium:E | tail -n 150
# Preserve BOTH the successful application marker and actual Android result.
# A failure marker, missing code, or extra terminal codes must fail closed.
tr -d '\r' < "$OUT/android-test-raw.txt" > "$OUT/android-test.txt"
grep -F 'CP_HTML_PREVIEW_PASS: bootstrap, local origin, five tabs, mock disclosure' "$OUT/android-test.txt"
grep -F 'CP_HTML_PREVIEW_LOAD_METRICS' "$OUT/android-test.txt"
test "$(grep -c '^INSTRUMENTATION_CODE:' "$OUT/android-test.txt")" -eq 1
grep -Fx 'INSTRUMENTATION_CODE: -1' "$OUT/android-test.txt"
if grep -Eq 'CP_HTML_PREVIEW_FAIL|INSTRUMENTATION_FAILED|INSTRUMENTATION_ABORTED' "$OUT/android-test.txt"; then exit 1; fi
echo CP_HTML_PREVIEW_RELEASE_GATE_PASS
