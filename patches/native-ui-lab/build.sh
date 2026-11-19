#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../.."
P=patches/native-ui-lab
OUT="$RUNNER_TEMP/cp-native-ui-lab"
mkdir -p "$OUT"/{mainclasses,testclasses,maindex,testdex}
T="$ANDROID_HOME/build-tools/35.0.0"
J="$ANDROID_HOME/platforms/android-35/android.jar"
javac --release 8 -cp "$J" -d "$OUT/mainclasses" "$P/NativeLabActivity.java" "$P/LabLoadService.java"
javac --release 8 -cp "$J" -d "$OUT/testclasses" "$P/NativeLabTest.java"
"$T/d8" --min-api 24 --lib "$J" --output "$OUT/maindex" $(find "$OUT/mainclasses" -name '*.class')
"$T/d8" --min-api 24 --lib "$J" --output "$OUT/testdex" $(find "$OUT/testclasses" -name '*.class')
"$T/aapt2" link -I "$J" --manifest "$P/AndroidManifest.xml" -o "$OUT/main-unsigned.apk"
"$T/aapt2" link -I "$J" --manifest "$P/TestManifest.xml" -o "$OUT/test-unsigned.apk"
(cd "$OUT/maindex"; zip -q -j "$OUT/main-unsigned.apk" classes.dex)
(cd "$OUT/testdex"; zip -q -j "$OUT/test-unsigned.apk" classes.dex)
for kind in main test; do
  "$T/zipalign" -f 4 "$OUT/$kind-unsigned.apk" "$OUT/$kind-aligned.apk"
  "$T/apksigner" sign --ks signing/checkpoint145-debug.keystore --ks-key-alias "$KEY_ALIAS" --ks-pass env:KEYSTORE_PASSWORD --key-pass env:KEY_PASSWORD --out "$OUT/$kind.apk" "$OUT/$kind-aligned.apk"
  "$T/apksigner" verify --verbose "$OUT/$kind.apk"
  "$T/zipalign" -c 4 "$OUT/$kind.apk"
done
"$T/aapt2" dump permissions "$OUT/main.apk" | tee "$OUT/permissions.txt"
if grep -q 'uses-permission' "$OUT/permissions.txt"; then exit 1; fi
cp "$OUT/main.apk" "$OUT/Cinemana-Native-UI-Lab-0.1.apk"
(cd "$OUT"; sha256sum Cinemana-Native-UI-Lab-0.1.apk > SHA256SUMS.txt)
