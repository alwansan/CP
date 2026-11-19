#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-resource-transform"
mkdir -p "$OUT"
APK="$OUT/Cinemana-Compose-Lab-0.1.apk"
T="$ANDROID_HOME/build-tools/35.0.0/aapt2"
JAR="Cinemana_PATCH252_Project/tools/apktool_2.12.1.jar"
test -f "$JAR"
gh release download cp-compose-lab-11 --repo "$GITHUB_REPOSITORY" --pattern Cinemana-Compose-Lab-0.1.apk --dir "$OUT"
(cd "$OUT"; echo '86fbbeff9df85dfe680049089399ad9f33ab570b6ad3fe8822f6f3fdea09768f  Cinemana-Compose-Lab-0.1.apk' | sha256sum -c -)
python3 -m unittest discover -s patches/native-compose-resource-transform -p 'test_*.py'
java -jar "$JAR" d -s -f -p "$OUT/framework" "$APK" -o "$OUT/decoded" 2>&1 | tee "$OUT/decode.log"
python3 patches/native-compose-resource-transform/transform_resources.py --original Cinemana_PATCH252_Project/app --apk "$APK" --decoded "$OUT/decoded" --aapt2 "$T" --output "$OUT/transformed" 2>&1 | tee "$OUT/transform.log"
"$T" compile --dir "$OUT/transformed/res" -o "$OUT/compiled.zip" 2>&1 | tee "$OUT/compile.log"
"$T" link -o "$OUT/resource-only.apk" -I "$ANDROID_HOME/platforms/android-35/android.jar" --manifest "$OUT/transformed/AndroidManifest.xml" --min-sdk-version 24 --target-sdk-version 35 --stable-ids "$OUT/transformed/stable.ids" "$OUT/compiled.zip" 2>&1 | tee "$OUT/link.log"
PYTHONPATH=patches/native-compose-audit python3 - "$OUT" "$T" <<'PY'
import sys,json,pathlib
from native_dependency_audit import lab_resources,original_resources
p=pathlib.Path(sys.argv[1]);t=sys.argv[2]
expected={}
for line in (p/"transformed/stable.ids").read_text().splitlines():
    key,val=line.split(" = ");expected[key.split(":",1)[1]]=int(val,16)
actual=lab_resources(p/"resource-only.apk",t)
old=original_resources(pathlib.Path("Cinemana_PATCH252_Project/app"))
assert actual==expected,(sorted(set(expected)-set(actual)),sorted(set(actual)-set(expected)),[(k,v,actual.get(k)) for k,v in expected.items() if actual.get(k)!=v][:20])
assert not set(old)&set(actual)
assert not set(old.values())&set(actual.values())
result={"scope":"actual standalone lab resources relinked only, no DEX or original APK merge","preserved_namespace_original_ids":len(old),"actual_relinked":len(actual),"name_collisions":0,"numeric_collisions":0}
(p/"summary.json").write_text(json.dumps(result,indent=2)+"\n")
print("CP_RESOURCE_ACTUAL_RELINK_PASS "+json.dumps(result,separators=(",",":")))
PY
