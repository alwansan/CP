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
grep -q 'SQLite journal restart probe: PASS (6 journal restart cases)' "$report/window.xml"
grep -q 'Original Room schema probe: PASS (3 original Room tables, 2 subtitle rows)' "$report/window.xml"
grep -q 'Original Room coordinator: PASS (4 Room coordinator scenarios)' "$report/window.xml"
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
screen_has 'Search requests: 1 | lastTab=0'
tap_label 'Select Series tab'
screen_has 'tab=1'
screen_has 'Search requests: 2 | lastTab=1'
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

# Unlike a DB close/reopen test, this kills the *actual Android process*
# after writing half of a disposable diagnostic SQLite migration. The second
# process must recover the journal from private app storage on disk.
adb shell am start -W -n "$package/.JournalProcessProbeActivity" --es mode prepare |
    tee "$report/journal-process-prepare.txt"
screen_has 'Process restart journal: PREPARED'
adb shell pidof "$package" | tee "$report/pid-before-force-stop.txt"
test -s "$report/pid-before-force-stop.txt"

adb shell am force-stop "$package"
sleep 2
if adb shell pidof "$package" | grep -Eq '[0-9]'; then
    echo "JOURNAL_PROCESS_KILL_FAILED: diagnostic app still running after force-stop"
    exit 1
fi
echo "FORCE_STOP_CONFIRMED" | tee "$report/force-stop-confirmation.txt"

adb shell am start -W -n "$package/.JournalProcessProbeActivity" --es mode recover |
    tee "$report/journal-process-recover.txt"
screen_has 'Process restart journal: RECOVERED'
adb shell pidof "$package" | tee "$report/pid-after-restart.txt"
test -s "$report/pid-after-restart.txt"
adb exec-out screencap -p > "$report/journal-process-recovered.png" || true
echo "JOURNAL_PROCESS_RESTART_PASS: pending on-disk diagnostic journal recovered in new Android process" | tee "$report/journal-result.txt"

# Independent on-disk SQLite files: Downloads, Cinemana/subtitles and intent.
# After each of three partial-write points, force-stop the Android process.
# A fresh process must reopen and compensate BOTH databases from the journal.
for phase in 1 2 3; do
    # After a successful recovery, the old Activity can still be top-most.
    # Without force-stop here, "am start" may deliver an intent to the same
    # instance WITHOUT rerunning onCreate; this caused CI phase 2 to time out.
    adb shell am force-stop "$package"
    sleep 1
    adb shell am start -W -n "$package/.MultiDatabaseProcessActivity" \
        --es mode prepare --ei phase "$phase" |
        tee "$report/multidb-phase-${phase}-prepare.txt"
    screen_has "Cross-DB restart: PREPARED stage=$phase"
    adb shell pidof "$package" > "$report/multidb-phase-${phase}-pid-before.txt"
    test -s "$report/multidb-phase-${phase}-pid-before.txt"
    adb shell am force-stop "$package"
    sleep 2
    if adb shell pidof "$package" | grep -Eq '[0-9]'; then
        echo "MULTIDB_FORCE_STOP_FAILED: phase=$phase"
        exit 1
    fi
    if [ "$phase" = 3 ]; then
        # A second process restores Cinemana but intentionally leaves the
        # Downloads DB and durable journal pending. Kill it before completion.
        adb shell am start -W -n "$package/.MultiDatabaseProcessActivity" \
            --es mode partial-recover --ei phase "$phase" |
            tee "$report/multidb-phase-${phase}-partial-recover.txt"
        screen_has "Cross-DB restart: PARTIAL_REPLAY stage=$phase"
        adb shell pidof "$package" > "$report/multidb-phase-${phase}-partial-pid.txt"
        test -s "$report/multidb-phase-${phase}-partial-pid.txt"
        adb shell am force-stop "$package"
        sleep 2
        if adb shell pidof "$package" | grep -Eq '[0-9]'; then
            echo "MULTIDB_MID_RECOVERY_STOP_FAILED"
            exit 1
        fi
    fi
    adb shell am start -W -n "$package/.MultiDatabaseProcessActivity" \
        --es mode recover --ei phase "$phase" |
        tee "$report/multidb-phase-${phase}-recover.txt"
    screen_has "Cross-DB restart: RECOVERED stage=$phase"
    adb shell pidof "$package" > "$report/multidb-phase-${phase}-pid-after.txt"
    test -s "$report/multidb-phase-${phase}-pid-after.txt"
    adb exec-out screencap -p > "$report/multidb-phase-${phase}-recovered.png" || true
done
echo "MULTIDB_PROCESS_RESTART_PASS: three independently committed SQLite stages recovered after force-stop" |
    tee "$report/multidb-result.txt"

# Exact original Room CREATE TABLE SQL in separate disposable files with
# durable, independent journal: force-stop after each partial write.
for phase in 1 2 3; do
    adb shell am force-stop "$package"
    sleep 1
    adb shell am start -W -n "$package/.OriginalRoomCrashProcessActivity" \
        --es mode prepare --ei phase "$phase" |
        tee "$report/original-room-phase-${phase}-prepare.txt"
    screen_has "Room schema restart: PREPARED stage=$phase"
    adb shell pidof "$package" > "$report/original-room-phase-${phase}-pid-before.txt"
    test -s "$report/original-room-phase-${phase}-pid-before.txt"
    adb shell am force-stop "$package"
    sleep 2
    if adb shell pidof "$package" | grep -Eq '[0-9]'; then
        echo "ORIGINAL_ROOM_FORCE_STOP_FAILED phase=$phase"
        exit 1
    fi
    if [ "$phase" = 3 ]; then
        adb shell am start -W -n "$package/.OriginalRoomCrashProcessActivity" \
            --es mode partial-recover --ei phase "$phase" |
            tee "$report/original-room-phase-${phase}-partial.txt"
        screen_has "Room schema restart: PARTIAL_REPLAY stage=$phase"
        adb shell pidof "$package" > "$report/original-room-phase-${phase}-partial-pid.txt"
        test -s "$report/original-room-phase-${phase}-partial-pid.txt"
        adb shell am force-stop "$package"
        sleep 2
        if adb shell pidof "$package" | grep -Eq '[0-9]'; then
            echo "ORIGINAL_ROOM_MID_COMPENSATION_FORCE_STOP_FAILED"
            exit 1
        fi
    fi
    adb shell am start -W -n "$package/.OriginalRoomCrashProcessActivity" \
        --es mode recover --ei phase "$phase" |
        tee "$report/original-room-phase-${phase}-recover.txt"
    screen_has "Room schema restart: RECOVERED stage=$phase"
    adb shell pidof "$package" > "$report/original-room-phase-${phase}-pid-after.txt"
    test -s "$report/original-room-phase-${phase}-pid-after.txt"
    adb exec-out screencap -p > "$report/original-room-phase-${phase}-recovered.png" || true
done
echo "ORIGINAL_ROOM_CRASH_JOURNAL_PASS: three real-schema SQLite phases and mid-compensation process kill recovered" |
    tee "$report/original-room-crash-result.txt"
