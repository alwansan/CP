#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-resource-coexistence"
MIN="$RUNNER_TEMP/cp-minified-combined"
P=patches/native-compose-resource-coexistence
ORIG=Cinemana_PATCH252_Project/app
JAR=Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar
BT="$ANDROID_HOME/build-tools/35.0.0"
mkdir -p "$OUT/report" "$OUT/framework"
python3 "$P/resource_coexistence.py" prepare --original "$ORIG" --labres "$MIN/report/res" --newmap "$MIN/report/expected-resource-map.json" --baseline "$OUT/baseline" --candidate "$OUT/candidate" --out "$OUT/report"
# Both trees have identical original manifest, sdk metadata and only resources;
# no original DEX, assets, signing or executable APK delivery.
java -jar "$JAR" b "$OUT/baseline" -p "$OUT/framework" -o "$OUT/baseline-res.apk" > "$OUT/baseline-build.log" 2>&1 || { tail -60 "$OUT/baseline-build.log"; exit 1; }
java -jar "$JAR" b "$OUT/candidate" -p "$OUT/framework" -o "$OUT/candidate-res.apk" > "$OUT/candidate-build.log" 2>&1 || { tail -60 "$OUT/candidate-build.log"; exit 1; }
python3 "$P/resource_coexistence.py" verify --original "$ORIG" --newmap "$MIN/report/expected-resource-map.json" --baselineapk "$OUT/baseline-res.apk" --candidateapk "$OUT/candidate-res.apk" --labapk "$MIN/res-linked.apk" --aapt2 "$BT/aapt2" --out "$OUT/report" | tee "$OUT/verify.log"
