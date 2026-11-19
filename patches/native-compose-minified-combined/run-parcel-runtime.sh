#!/usr/bin/env bash
set -euo pipefail
P=patches/native-compose-minified-combined
OUT="$RUNNER_TEMP/cp-minified-combined"
APK="$OUT/combined-minified.apk"
BT="$ANDROID_HOME/build-tools/35.0.0"
test -s "$APK"
mkdir -p "$OUT/parcel-probe/classes" "$OUT/parcel-probe/dex"
javac -source 8 -target 8 -cp "$ANDROID_HOME/platforms/android-35/android.jar" -d "$OUT/parcel-probe/classes" "$P/ParcelRoundTrip.java"
"$BT/d8" --min-api 24 --lib "$ANDROID_HOME/platforms/android-35/android.jar" --output "$OUT/parcel-probe/dex" "$OUT/parcel-probe/classes/cp/probe/ParcelRoundTrip.class"
jar cf "$OUT/parcel-probe/probe.jar" -C "$OUT/parcel-probe/dex" classes.dex
# The exact final signed APK is loaded unchanged, not a rebuilt test copy.
# Only a disposable emulator shell process, not app UID/real application data.
REMOTE=/data/local/tmp/cp-parcel-probe
trap 'adb shell rm -rf "$REMOTE" >/dev/null 2>&1 || true' EXIT
adb shell rm -rf "$REMOTE"
adb shell mkdir "$REMOTE"
adb push "$APK" "$REMOTE/target.apk"
adb push "$OUT/parcel-probe/probe.jar" "$REMOTE/probe.jar"
adb shell chmod 444 "$REMOTE/target.apk" "$REMOTE/probe.jar"
timeout 90 adb shell "CLASSPATH=$REMOTE/probe.jar:$REMOTE/target.apk app_process /system/bin cp.probe.ParcelRoundTrip" 2>&1 | tee "$OUT/parcel-runtime.log"
grep -Eq '^CP_RELOCATED_PARCEL_ROUNDTRIP_PASS checks=[1-9][0-9]* cases=5 aliases=2\r?$' "$OUT/parcel-runtime.log"
