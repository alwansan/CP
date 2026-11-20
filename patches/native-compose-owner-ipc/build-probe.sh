#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-real-owner-ipc"
G="$RUNNER_TEMP/cp-nativeui-gate"
RES="$RUNNER_TEMP/cp-resource-coexistence"
P=patches/native-compose-owner-ipc
M=patches/html-bridge/src/com/shabakaty/cinemana/htmlbridge/model
BT="$ANDROID_HOME/build-tools/35.0.0"
SDK="$ANDROID_HOME/platforms/android-35/android.jar"
mkdir -p "$OUT/report" "$OUT/classes" "$OUT/dex" "$OUT/testclasses" "$OUT/testdex" "$OUT/testmanifest" "$OUT/assets"
python3 "$P/prepare.py" manifest --manifest "$RES/candidate/AndroidManifest.xml"
java -jar Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar b -f "$RES/candidate" -p "$RES/framework" -o "$OUT/manifest.apk" > "$OUT/report/manifest-build.log" 2>&1 || { tail -60 "$OUT/report/manifest-build.log"; exit 1; }
javac -source 8 -target 8 -cp "$SDK" -d "$OUT/classes" "$P/RealOwnerService.java" "$P/UiIpcProbeProvider.java" \
    "$M/DownloadModel.java" "$M/BoundedDownloadRead.java" "$M/OwnerPageRead.java" "$M/ExistingDaoSource.java" "$M/ExistingOwnerPageSource.java" "$M/OwnerPageSession.java" "$M/OwnerProcessReads.java"
jar cf "$OUT/owner.jar" -C "$OUT/classes" .
"$BT/d8" --lib "$SDK" --min-api 28 --output "$OUT/dex" "$OUT/owner.jar"
python3 "$P/prepare.py" assemble --base "$G/unsigned.apk" --manifestapk "$OUT/manifest.apk" --dex "$OUT/dex/classes.dex" --output "$OUT/unsigned.apk" --aapt2 "$BT/aapt2" --report "$OUT/report"
javac -source 8 -target 8 -cp "$SDK" -d "$OUT/testclasses" "$P/IpcProbe.java"
jar cf "$OUT/test.jar" -C "$OUT/testclasses" .
"$BT/d8" --lib "$SDK" --min-api 28 --output "$OUT/testdex" "$OUT/test.jar"
cp "$P/test-manifest.xml" "$OUT/testmanifest/AndroidManifest.xml"
"$BT/aapt" package -f -M "$OUT/testmanifest/AndroidManifest.xml" -I "$SDK" -A "$OUT/assets" -F "$OUT/test-unsigned.apk"
(cd "$OUT/testdex" && zip -q "$OUT/test-unsigned.apk" classes.dex)
for n in "" test-; do
    "$BT/zipalign" -f -p 4 "$OUT/${n}unsigned.apk" "$OUT/${n}aligned.apk"
    "$BT/apksigner" sign --ks signing/checkpoint145-debug.keystore --ks-key-alias "$KEY_ALIAS" --ks-pass env:KEYSTORE_PASSWORD --key-pass env:KEY_PASSWORD --out "$OUT/${n}signed.apk" "$OUT/${n}aligned.apk"
    "$BT/apksigner" verify --verbose "$OUT/${n}signed.apk"
done
