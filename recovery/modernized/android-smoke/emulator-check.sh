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
    if test -f "$report/window.xml" && grep -q 'Media3 High 10 adapter: PASS' "$report/window.xml"
grep -q 'MKV promotion preflight: PASS' "$report/window.xml"
grep -q 'Original search layout: PASS' "$report/window.xml"; then
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
grep -q 'MKV promotion preflight: PASS' "$report/window.xml"
grep -q 'Original search layout: PASS' "$report/window.xml"
grep -q 'SQLite rollback readback: PASS (6 in-memory SQLite cases)' "$report/window.xml"
grep -q 'SQLite file reopen probe: PASS (6 file-backed reopen cases)' "$report/window.xml"
adb shell pidof "$package" | tee "$report/process.txt"
test -s "$report/process.txt"
echo "EMULATOR_PASS: source-first diagnostic APK installed, launched and displayed expected Media3 result"


# Interact with the new source-first search controller, not the original app.
# All data is a local fixture: no Cinemana API, user account, or real database.
ui_dump() {
    adb shell uiautomator dump /sdcard/cinemana_recovery_window.xml > "$report/uiautomator.txt" 2>&1 || true
    adb pull /sdcard/cinemana_recovery_window.xml "$report/window.xml" >/dev/null 2>&1 || true
}
screen_has() {
    local wanted="$1"
    for attempt in 1 2 3 4 5 6 7 8; do
        ui_dump
        if test -s "$report/window.xml" && grep -Fq "$wanted" "$report/window.xml"; then
            return 0
        fi
        if (( attempt % 2 == 0 )); then
            adb shell input swipe 160 260 160 720 250
        else
            adb shell input swipe 160 720 160 260 250
        fi
        sleep 1
    done
    echo "ANDROID_UI_MISSING: $wanted"
    return 1
}
tap_label() {
    local label="$1"
    local coordinates=""
    for attempt in 1 2 3 4 5 6 7 8; do
        ui_dump
        coordinates="$(python3 - "$report/window.xml" "$label" <<'PY'
import re, sys, xml.etree.ElementTree as ET
try:
    root=ET.parse(sys.argv[1]).getroot()
    for node in root.iter("node"):
        if node.get("text", "").casefold() == sys.argv[2].casefold():
            coords=list(map(int,re.findall(r"\d+",node.get("bounds", ""))))
            if len(coords)==4:
                print((coords[0]+coords[2])//2,(coords[1]+coords[3])//2)
                break
except (OSError,ValueError,ET.ParseError):
    pass
PY
)"
        if test -n "$coordinates"; then
            adb shell input tap $coordinates
            sleep 2
            return 0
        fi
        if (( attempt % 2 == 0 )); then
            adb shell input swipe 160 260 160 720 250
        else
            adb shell input swipe 160 720 160 260 250
        fi
        sleep 1
    done
    echo "ANDROID_UI_CLICK_TARGET_MISSING: $label"
    return 1
}
adb shell am start -W -n "$package/.SearchFlowActivity" | tee "$report/search-activity-start.txt"
sleep 3
screen_has 'Search state: RECENT'
tap_label 'Submit sample search'
screen_has 'Search state: RESULTS'
screen_has 'count=3'
tap_label 'Filter fixture'
screen_has 'Filter events: 1'
tap_label 'Clear sample search'
screen_has 'Search state: RECENT'
tap_label 'Select Series tab'
screen_has 'tab=1'
adb exec-out screencap -p > "$report/search-screenshot.png" || true
echo "SEARCH_FLOW_PASS: source-first LiveData binding, fixture submission, filter and clear verified on Android"
