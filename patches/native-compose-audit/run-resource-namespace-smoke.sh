#!/usr/bin/env bash
set -euo pipefail
T="$ANDROID_HOME/build-tools/35.0.0/aapt2"
ROOT="$RUNNER_TEMP/resource-namespace-smoke"
mkdir -p "$ROOT/res/values"
cat > "$ROOT/AndroidManifest.xml" <<'EOF'
<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="com.cinemana.fixture"><application android:label="@string/title"/></manifest>
EOF
cat > "$ROOT/res/values/strings.xml" <<'EOF'
<resources><string name="title">legacy</string><color name="bg">#101020</color></resources>
EOF
"$T" compile --dir "$ROOT/res" -o "$ROOT/base.zip"
"$T" link -o "$ROOT/base.apk" -I "$ANDROID_HOME/platforms/android-35/android.jar" --manifest "$ROOT/AndroidManifest.xml" --emit-ids "$ROOT/base.ids" "$ROOT/base.zip"
PYTHONPATH=patches/native-compose-audit python3 - "$ROOT" "$T" <<'PY'
import sys,pathlib
from native_dependency_audit import lab_resources
from resource_namespace_plan import allocate,stable_lines
p=pathlib.Path(sys.argv[1]);t=sys.argv[2]
old=lab_resources(p/"base.apk",t)
# Artificial lab IDs deliberately overlap old IDs under different names.
lab={"string/title":old["color/bg"],"color/bg":old["string/title"]}
rows=allocate(old,lab)
combined=dict(old);combined.update({k:v for _,_,k,v in rows})
(p/"merged.ids").write_text(stable_lines(combined,"com.cinemana.fixture"))
(p/"res/values/strings.xml").write_text('<resources><string name="title">legacy</string><color name="bg">#101020</color><string name="cpui_title">UI</string><color name="cpui_bg">#abcdef</color></resources>')
PY
"$T" compile --dir "$ROOT/res" -o "$ROOT/merged.zip"
"$T" link -o "$ROOT/merged.apk" -I "$ANDROID_HOME/platforms/android-35/android.jar" --manifest "$ROOT/AndroidManifest.xml" --stable-ids "$ROOT/merged.ids" --emit-ids "$ROOT/relinked.ids" "$ROOT/merged.zip"
PYTHONPATH=patches/native-compose-audit python3 - "$ROOT" "$T" <<'PY'
import sys,pathlib
from native_dependency_audit import lab_resources
p=pathlib.Path(sys.argv[1]);t=sys.argv[2]
expected={}
for line in (p/"merged.ids").read_text().splitlines():
    key,value=line.split(" = ")
    expected[key.split(":",1)[1]]=int(value,16)
actual=lab_resources(p/"merged.apk",t)
assert actual==expected,(actual,expected)
assert all(actual[k]==v for k,v in lab_resources(p/"base.apk",t).items())
print("CP_RESOURCE_AAPT2_STABLE_IDS_PASS original=2 new=2")
PY
