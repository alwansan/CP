#!/usr/bin/env bash
set -euo pipefail

apk="recovery/modernized/android-smoke/build/outputs/apk/debug/android-smoke-debug.apk"
package="com.shabakaty.cinemana.recovery.smoke"
activity="$package/.RecoverySmokeActivity"
report="${RUNNER_TEMP:-/tmp}/recovery-emulator"
mkdir -p "$report"
test -s "$apk"

adb wait-for-device
adb shell getprop ro.build.version.sdk | tee "$report/emulator-api.txt"
adb shell getprop ro.product.cpu.abi | tee "$report/emulator-abi.txt"
adb install -r "$apk" | tee "$report/install.txt"
adb shell pm path "$package" | tee "$report/package.txt"
adb shell am start -W -n "$activity" | tee "$report/activity-start.txt"
sleep 4

for attempt in 1 2 3; do
    adb shell uiautomator dump /sdcard/cinemana_recovery_window.xml > "$report/uiautomator.txt" 2>&1 || true
    adb pull /sdcard/cinemana_recovery_window.xml "$report/window.xml" >/dev/null 2>&1 || true
    if test -f "$report/window.xml" && grep -q 'Media3 High 10 adapter: PASS' "$report/window.xml"; then
        break
    fi
    sleep 2
done

adb exec-out screencap -p > "$report/screenshot.png" || true
adb logcat -d -t 1500 > "$report/logcat-tail.txt" || true
adb shell dumpsys activity activities > "$report/activities.txt" || true
test -s "$report/window.xml"
grep -q 'Cinemana source recovery diagnostic host' "$report/window.xml"
grep -q 'Media3 High 10 adapter: PASS' "$report/window.xml"
adb shell pidof "$package" | tee "$report/process.txt"
test -s "$report/process.txt"
echo "EMULATOR_PASS: source-first diagnostic APK installed, launched and displayed expected Media3 result"
