#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-nativeui-gate"
D="$RUNNER_TEMP/cp-dormant"
RES="$RUNNER_TEMP/cp-resource-coexistence"
BT="$ANDROID_HOME/build-tools/35.0.0"
SDK="$ANDROID_HOME/platforms/android-35/android.jar"
P=patches/native-compose-active-startup
mkdir -p "$OUT/report" "$OUT/classes" "$OUT/dex" "$OUT/test-classes" "$OUT/test-dex"
# Reuse the verified scratch tree; never patch the recovered app manifest.
python3 "$P/prepare.py" prepare --manifest "$RES/candidate/AndroidManifest.xml"
java -jar Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar b -f "$RES/candidate" -p "$RES/framework" -o "$OUT/manifest.apk" > "$OUT/report/manifest-build.log" 2>&1 || { tail -60 "$OUT/report/manifest-build.log"; exit 1; }
javac -source 8 -target 8 -cp "$SDK" -d "$OUT/classes" "$P"/src/*.java
jar cf "$OUT/gate.jar" -C "$OUT/classes" .
"$BT/d8" --min-api 28 --lib "$SDK" --output "$OUT/dex" "$OUT/gate.jar"
python3 "$P/prepare.py" assemble --dormant "$D/unsigned.apk" --manifestapk "$OUT/manifest.apk" --dex "$OUT/dex/classes.dex" --output "$OUT/unsigned.apk" --aapt2 "$BT/aapt2" --report "$OUT/report"
javac -source 8 -target 8 -cp "$SDK" -d "$OUT/test-classes" "$P/GateInstrumentation.java"
jar cf "$OUT/test.jar" -C "$OUT/test-classes" .
"$BT/d8" --min-api 28 --lib "$SDK" --output "$OUT/test-dex" "$OUT/test.jar"
"$BT/aapt" package -f -M "$P/test-manifest.xml" -I "$SDK" -F "$OUT/test-unsigned.apk"
(cd "$OUT/test-dex" && zip -q "$OUT/test-unsigned.apk" classes.dex)
for n in gate test; do
    if [ "$n" = gate ]; then input="$OUT/unsigned.apk"; else input="$OUT/test-unsigned.apk"; fi
    "$BT/zipalign" -f -p 4 "$input" "$OUT/$n-aligned.apk"
    "$BT/apksigner" sign --ks signing/checkpoint145-debug.keystore --ks-key-alias "$KEY_ALIAS" --ks-pass env:KEYSTORE_PASSWORD --key-pass env:KEY_PASSWORD --out "$OUT/$n-signed.apk" "$OUT/$n-aligned.apk"
    "$BT/apksigner" verify --verbose "$OUT/$n-signed.apk"
done
