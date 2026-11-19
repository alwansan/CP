#!/usr/bin/env bash
set -euo pipefail
# Build the existing verified minified lab; no changes to original application.
bash patches/native-compose-isolation/run-r8-probe.sh
OUT="$RUNNER_TEMP/cp-parcel-relocation"
mkdir -p "$OUT/report"
APK="patches/compose-lab/app/build/outputs/apk/release/app-release.apk"
BT="$ANDROID_HOME/build-tools/35.0.0"
JAR="Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar"
D="patches/native-compose-parcel-isolation"
python3 -m unittest discover -s "$D" -p 'test_*.py'
java -jar "$JAR" d -r -f -p "$OUT/framework" "$APK" -o "$OUT/decoded" 2>&1 | tee "$OUT/decode.log"
python3 "$D/relocate_parcel_classes.py" --decoded "$OUT/decoded" --out "$OUT/report" | tee "$OUT/rewrite.log"
java -jar "$JAR" b "$OUT/decoded" -p "$OUT/framework" -o "$OUT/relocated-unsigned.apk" 2>&1 | tee "$OUT/assemble.log"
java -jar "$JAR" d -r -f -p "$OUT/framework" "$OUT/relocated-unsigned.apk" -o "$OUT/roundtrip" 2>&1 | tee "$OUT/decode-verify.log"
python3 "$D/relocate_parcel_classes.py" --decoded "$OUT/roundtrip" --out "$OUT/report" --verify-only | tee "$OUT/verify.log"
PYTHONPATH=patches/native-compose-audit python3 - "$APK" "$OUT/relocated-unsigned.apk" "$BT/aapt2" "$OUT/report" <<'PY'
import sys,pathlib,json
from native_dependency_audit import lab_classes,lab_resources,original_classes,command
source,result,t,report=sys.argv[1:]
a,b=pathlib.Path(source),pathlib.Path(result)
orig,_=original_classes(pathlib.Path("Cinemana_PATCH252_Project/app"))
classes,_=lab_classes(b,None)
assert not set(orig)&set(classes),sorted(set(orig)&set(classes))
assert all(len(v)==1 for v in classes.values())
assert lab_resources(a,t)==lab_resources(b,t)
assert command([t,"dump","permissions",source])==command([t,"dump","permissions",result])
print("CP_PARCEL_ZERO_CLASS_OVERLAP_PASS",len(classes),"raw resource overlap still open")
(pathlib.Path(report)/"static-summary.json").write_text(json.dumps({"classes":len(classes),"class_overlap":0,"resource_map_unchanged":True,"scope":"minified standalone, parcel wire compatibility not proven; original APK not merged"},indent=2))
PY
keytool -genkeypair -keystore "$OUT/probe.jks" -storepass android -keypass android -alias probe -keyalg RSA -keysize 2048 -validity 1 -dname "CN=CP isolated lab test only" >/dev/null
"$BT/zipalign" -f 4 "$OUT/relocated-unsigned.apk" "$OUT/aligned.apk"
"$BT/apksigner" sign --ks "$OUT/probe.jks" --ks-pass pass:android --key-pass pass:android --out "$OUT/relocated-lab.apk" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$OUT/relocated-lab.apk" | tee "$OUT/signature.log"
# Standalone smoke tests use this disposable output only.
cp "$OUT/relocated-lab.apk" "$APK"
