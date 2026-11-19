#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-combined"
mkdir -p "$OUT/report"
APK="$OUT/Cinemana-Compose-Lab-0.1.apk"
JAR="Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar"
ORIG="Cinemana_PATCH252_Project/app"
BT="$ANDROID_HOME/build-tools/35.0.0"
D="patches/native-compose-dex-transform"
P="patches/native-compose-combined-probe"
gh release download cp-compose-lab-11 --repo "$GITHUB_REPOSITORY" --pattern Cinemana-Compose-Lab-0.1.apk --dir "$OUT"
(cd "$OUT"; echo '86fbbeff9df85dfe680049089399ad9f33ab570b6ad3fe8822f6f3fdea09768f  Cinemana-Compose-Lab-0.1.apk' | sha256sum -c -)
python3 -m unittest discover -s "$D" -p 'test_*.py'
python3 -m unittest discover -s "$P" -p 'test_*.py'
API=$(python3 "$P/dex_format.py" "$APK")
echo "Dex assembler API selected from input format: $API" | tee "$OUT/dex-format.log"
java -jar "$JAR" d -r -f --api-level "$API" -p "$OUT/framework" "$APK" -o "$OUT/dex" 2>&1 | tee "$OUT/decode-dex.log"
python3 "$D/rewrite_named_fields.py" --original "$ORIG" --apk "$APK" --decoded "$OUT/dex" --aapt2 "$BT/aapt2" --out "$OUT/report" | tee "$OUT/named.log"
python3 "$D/rewrite_styleables.py" --original "$ORIG" --apk "$APK" --decoded "$OUT/dex" --aapt2 "$BT/aapt2" --out "$OUT/report" | tee "$OUT/styleable.log"
java -jar "$JAR" b "$OUT/dex" --api-level "$API" -p "$OUT/framework" -o "$OUT/dex-only-do-not-install.apk" 2>&1 | tee "$OUT/dex-build.log"
python3 "$P/dex_format.py" "$APK" --result "$OUT/dex-only-do-not-install.apk" | tee -a "$OUT/dex-format.log"
java -jar "$JAR" d -r -f --api-level "$API" -p "$OUT/framework" "$OUT/dex-only-do-not-install.apk" -o "$OUT/roundtrip" 2>&1 | tee "$OUT/dex-roundtrip.log"
python3 "$D/rewrite_named_fields.py" --original "$ORIG" --apk "$APK" --decoded "$OUT/roundtrip" --aapt2 "$BT/aapt2" --out "$OUT/report" --verify-only | tee "$OUT/named-verify.log"
python3 "$D/rewrite_styleables.py" --original "$ORIG" --apk "$APK" --decoded "$OUT/roundtrip" --aapt2 "$BT/aapt2" --out "$OUT/report" --verify-only | tee "$OUT/styleable-verify.log"
java -jar "$JAR" d -s -f -p "$OUT/framework" "$APK" -o "$OUT/res-source" 2>&1 | tee "$OUT/decode-res.log"
python3 "$P/combine_lab.py" prepare --original "$ORIG" --apk "$APK" --decoded "$OUT/res-source" --out "$OUT/report" --aapt2 "$BT/aapt2" | tee "$OUT/resource-prep.log"
"$BT/aapt2" compile --dir "$OUT/report/res" -o "$OUT/compiled.zip" 2>&1 | tee "$OUT/compile.log"
"$BT/aapt2" link -o "$OUT/res-linked.apk" -I "$ANDROID_HOME/platforms/android-35/android.jar" --manifest "$OUT/report/AndroidManifest.xml" --min-sdk-version 24 --target-sdk-version 32 --stable-ids "$OUT/report/stable.ids" "$OUT/compiled.zip" 2>&1 | tee "$OUT/link.log"
python3 "$P/combine_lab.py" combine --original "$ORIG" --apk "$APK" --out "$OUT/report" --aapt2 "$BT/aapt2" --dexdump "$BT/dexdump" --linked "$OUT/res-linked.apk" --dex-apk "$OUT/dex-only-do-not-install.apk" --combined "$OUT/combined-unsigned.apk" | tee "$OUT/combine.log"
python3 "$P/dex_format.py" "$APK" --result "$OUT/combined-unsigned.apk" | tee -a "$OUT/dex-format.log"
# Fresh temporary signing key exclusively for this CI lab; no production signing or release.
keytool -genkeypair -keystore "$OUT/probe.jks" -storepass android -keypass android -alias probe -keyalg RSA -keysize 2048 -validity 1 -dname "CN=CP standalone test only" >/dev/null
"$BT/zipalign" -f 4 "$OUT/combined-unsigned.apk" "$OUT/aligned.apk"
"$BT/apksigner" sign --ks "$OUT/probe.jks" --ks-pass pass:android --key-pass pass:android --out "$OUT/combined-lab.apk" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$OUT/combined-lab.apk" | tee "$OUT/signature.log"
# Only diagnostics are uploaded, never the probe APK or private key.
