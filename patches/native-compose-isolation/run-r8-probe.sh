#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-isolation-probe"
mkdir -p "$OUT"
# Only change the lab build in the disposable CI checkout, never the recovered app.
python3 - <<'PY'
from pathlib import Path
p=Path("patches/compose-lab/app/build.gradle.kts")
text=p.read_text()
old="isMinifyEnabled = false"
assert text.count(old)==1, "unexpected lab configuration"
text=text.replace(old, 'isMinifyEnabled = true\n            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), rootProject.file("../native-compose-isolation/probe.pro"))')
p.write_text(text)
PY
(cd patches/compose-lab && gradle --no-daemon :app:assembleRelease) 2>&1 | tee "$OUT/build.log"
APK="patches/compose-lab/app/build/outputs/apk/release/app-release.apk"
T="$ANDROID_HOME/build-tools/35.0.0"
test -s "$APK"
"$T/apksigner" verify --verbose "$APK" > "$OUT/signature.txt"
"$T/aapt2" dump permissions "$APK" > "$OUT/permissions.txt"
if grep -E 'uses-permission.*(android.permission.INTERNET|READ_EXTERNAL_STORAGE|WRITE_EXTERNAL_STORAGE|MANAGE_EXTERNAL_STORAGE|ACCESS_NETWORK_STATE)' "$OUT/permissions.txt"; then exit 1; fi
cp patches/compose-lab/app/build/outputs/mapping/release/mapping.txt "$OUT/mapping.txt"
python3 patches/native-compose-audit/native_dependency_audit.py --original Cinemana_PATCH252_Project/app --apk "$APK" --dexdump "$T/dexdump" --aapt2 "$T/aapt2" --out "$OUT/report"
python3 - "$OUT" <<'PY'
import json,pathlib,sys
p=pathlib.Path(sys.argv[1])
s=json.loads((p/"report/summary.json").read_text())
mapped=0
isolated=0
for line in (p/"mapping.txt").read_text().splitlines():
    if line and not line[0].isspace() and " -> " in line and line.endswith(":"):
        mapped+=1
        if line.split(" -> ",1)[1].startswith("com.alwansan.cinemana.uiisolated."):
            isolated+=1
assert mapped>0 and isolated>0, "no actual R8 class relocation observed"
out={"scope":"R8 minified standalone release, no original merge, no ART or reflection proof","mapped_classes":mapped,"classes_in_isolated_namespace":isolated,"remaining_overlap":s["class_overlap"],"resource_same_name_different_id":s["resource_same_name_different_id"],"resource_id_other_name":s["resource_id_other_name"],"raw_merge_blocked":s["verdict"]=="BLOCK_RAW_MERGE"}
(p/"isolation-summary.json").write_text(json.dumps(out,indent=2)+"\n")
print("CP_NATIVE_R8_ISOLATION_OBSERVATION "+json.dumps(out,separators=(",",":")))
PY
# Check only the expected disposable build configuration changed.
git diff --name-only | grep -Fx 'patches/compose-lab/app/build.gradle.kts'
test "$(git diff --name-only | wc -l)" -eq 1
