#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-real-owner"
P=patches/native-compose-real-owner
MODEL=patches/html-bridge/src/com/shabakaty/cinemana/htmlbridge/model
BT="$ANDROID_HOME/build-tools/35.0.0"
SDK="$ANDROID_HOME/platforms/android-35/android.jar"
mkdir -p "$OUT/report" "$OUT/classes" "$OUT/dex" "$OUT/assets"
# All adapter classes belong only to the signed instrumentation APK, not to
# the original app, and use the existing original Application/Room owner.
javac -source 8 -target 8 -cp "$SDK" -d "$OUT/classes" "$P/OwnerProbe.java" \
    "$MODEL/DownloadModel.java" "$MODEL/BoundedDownloadRead.java" "$MODEL/OwnerPageRead.java" \
    "$MODEL/ExistingDaoSource.java" "$MODEL/ExistingOwnerPageSource.java"
jar cf "$OUT/probe.jar" -C "$OUT/classes" .
"$BT/d8" --lib "$SDK" --min-api 28 --output "$OUT/dex" "$OUT/probe.jar"
"$BT/aapt" package -f -M "$P/AndroidManifest.xml" -I "$SDK" -A "$OUT/assets" -F "$OUT/unsigned.apk"
(cd "$OUT/dex" && zip -q "$OUT/unsigned.apk" classes.dex)
"$BT/zipalign" -f -p 4 "$OUT/unsigned.apk" "$OUT/aligned.apk"
"$BT/apksigner" sign --ks signing/checkpoint145-debug.keystore --ks-key-alias "$KEY_ALIAS" --ks-pass env:KEYSTORE_PASSWORD --key-pass env:KEY_PASSWORD --out "$OUT/probe.apk" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$OUT/probe.apk"
