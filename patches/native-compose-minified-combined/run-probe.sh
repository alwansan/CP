#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-minified-combined"
mkdir -p "$OUT/report"
APK="patches/compose-lab/app/build/outputs/apk/release/app-release.apk"
BT="$ANDROID_HOME/build-tools/35.0.0"
JAR="Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar"
ORIG="Cinemana_PATCH252_Project/app"
P="patches/native-compose-minified-combined"
C="patches/native-compose-combined-probe"
R="patches/native-compose-parcel-isolation"
bash patches/native-compose-isolation/run-r8-probe.sh
cp "$APK" "$OUT/baseline.apk"
cp "$RUNNER_TEMP/cp-isolation-probe/mapping.txt" "$OUT/report/baseline-mapping.txt"
python3 "$P/source_ids.py" plan --original "$ORIG" --apk "$OUT/baseline.apk" --aapt2 "$BT/aapt2" --out "$OUT/report" | tee "$OUT/plan.log"
# AGP supplies the application R fields to R8. Use non-conflicting IDs
# at the source link step, not an arbitrary literal rewrite after R8.
python3 - "$OUT/report/stable-input.ids" <<'PY'
from pathlib import Path
import sys
p=Path("patches/compose-lab/app/build.gradle.kts")
s=p.read_text()
anchor="    buildFeatures { compose = true }"
assert s.count(anchor)==1 and "androidResources {" not in s
stable=str(Path(sys.argv[1]).resolve())
assert '"' not in stable and "\\" not in stable
p.write_text(s.replace(anchor, '    androidResources { additionalParameters += listOf("--stable-ids", "'+stable+'") }\n'+anchor))
PY
(cd patches/compose-lab && gradle --no-daemon :app:assembleRelease) 2>&1 | tee "$OUT/stable-build.log"
cp "$APK" "$OUT/stable-source.apk"
cp patches/compose-lab/app/build/outputs/mapping/release/mapping.txt "$OUT/report/stable-mapping.txt"
python3 "$P/source_ids.py" verify --original "$ORIG" --apk "$OUT/stable-source.apk" --aapt2 "$BT/aapt2" --out "$OUT/report" | tee "$OUT/stable-verify.log"
API=$(python3 "$C/dex_format.py" "$OUT/stable-source.apk")
java -jar "$JAR" d -r -f --api-level "$API" -p "$OUT/framework" "$OUT/stable-source.apk" -o "$OUT/decoded" 2>&1 | tee "$OUT/decode.log"
python3 patches/native-compose-dex-audit/audit_dex_references.py --original "$ORIG" --apk "$OUT/stable-source.apk" --decoded "$OUT/decoded" --aapt2 "$BT/aapt2" --out "$OUT/report/minified-resource-audit" | tee "$OUT/minified-audit.log"
python3 "$R/relocate_parcel_classes.py" --decoded "$OUT/decoded" --out "$OUT/report/parcel" | tee "$OUT/relocate.log"
java -jar "$JAR" b "$OUT/decoded" --api-level "$API" -p "$OUT/framework" -o "$OUT/relocated.apk" 2>&1 | tee "$OUT/rebuild.log"
python3 "$C/dex_format.py" "$OUT/stable-source.apk" --result "$OUT/relocated.apk" | tee "$OUT/dex-format.log"
java -jar "$JAR" d -r -f --api-level "$API" -p "$OUT/framework" "$OUT/relocated.apk" -o "$OUT/roundtrip" 2>&1 | tee "$OUT/roundtrip.log"
python3 "$R/relocate_parcel_classes.py" --decoded "$OUT/roundtrip" --out "$OUT/report/parcel" --verify-only | tee "$OUT/relocate-verify.log"
python3 "$P/source_ids.py" verify --original "$ORIG" --apk "$OUT/relocated.apk" --aapt2 "$BT/aapt2" --out "$OUT/report" | tee "$OUT/relocated-id-verify.log"
# Rename resource names only: allocation verification above proves IDs stay
# exactly the same. Manifest references follow the existing proven transformer.
java -jar "$JAR" d -s -f -p "$OUT/framework" "$OUT/stable-source.apk" -o "$OUT/res-source" 2>&1 | tee "$OUT/res-decode.log"
python3 "$C/combine_lab.py" prepare --original "$ORIG" --apk "$OUT/stable-source.apk" --decoded "$OUT/res-source" --out "$OUT/report" --aapt2 "$BT/aapt2" | tee "$OUT/prepare.log"
"$BT/aapt2" compile --dir "$OUT/report/res" -o "$OUT/compiled.zip" 2>&1 | tee "$OUT/compile.log"
"$BT/aapt2" link -o "$OUT/res-linked.apk" -I "$ANDROID_HOME/platforms/android-35/android.jar" --manifest "$OUT/report/AndroidManifest.xml" --min-sdk-version 24 --target-sdk-version 35 --stable-ids "$OUT/report/stable.ids" "$OUT/compiled.zip" 2>&1 | tee "$OUT/link.log"
python3 "$C/combine_lab.py" combine --original "$ORIG" --apk "$OUT/relocated.apk" --out "$OUT/report" --aapt2 "$BT/aapt2" --dexdump "$BT/dexdump" --linked "$OUT/res-linked.apk" --dex-apk "$OUT/relocated.apk" --combined "$OUT/combined-unsigned.apk" | tee "$OUT/combine.log"
python3 "$C/dex_format.py" "$OUT/stable-source.apk" --result "$OUT/combined-unsigned.apk" | tee -a "$OUT/dex-format.log"
PYTHONPATH=patches/native-compose-audit python3 - "$OUT/combined-unsigned.apk" "$BT/aapt2" "$OUT/report" <<'PY'
import sys,pathlib,json
from native_dependency_audit import original_classes,original_resources,lab_classes,lab_resources
root=pathlib.Path("Cinemana_PATCH252_Project/app")
apk=pathlib.Path(sys.argv[1]);t=sys.argv[2]
oc,_=original_classes(root);nc,_=lab_classes(apk,None)
o=original_resources(root);n=lab_resources(apk,t)
assert not set(oc)&set(nc),sorted(set(oc)&set(nc))
assert all(len(v)==1 for v in nc.values())
assert not set(o)&set(n)
assert not set(o.values())&set(n.values())
s={"classes":len(nc),"resources":len(n),"class_overlap":0,"resource_name_overlap":0,"resource_numeric_overlap":0,"scope":"standalone minified; original app not merged"}
(pathlib.Path(sys.argv[3])/"final-summary.json").write_text(json.dumps(s,indent=2))
print("CP_MINIFIED_COMBINED_ZERO_OVERLAP_PASS "+json.dumps(s))
PY
keytool -genkeypair -keystore "$OUT/probe.jks" -storepass android -keypass android -alias probe -keyalg RSA -keysize 2048 -validity 1 -dname "CN=CP standalone test only" >/dev/null
"$BT/zipalign" -f 4 "$OUT/combined-unsigned.apk" "$OUT/aligned.apk"
"$BT/apksigner" sign --ks "$OUT/probe.jks" --ks-pass pass:android --key-pass pass:android --out "$OUT/combined-minified.apk" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$OUT/combined-minified.apk" | tee "$OUT/signature.log"
cp "$OUT/combined-minified.apk" "$APK"
