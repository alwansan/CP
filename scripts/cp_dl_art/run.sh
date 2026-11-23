#!/usr/bin/env bash
set -euo pipefail
apk="$1"
test -f "$apk"
tools="$ANDROID_HOME/build-tools/35.0.0"
platform="$ANDROID_HOME/platforms/android-35/android.jar"
src="scripts/cp_dl_art"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
mkdir -p "$tmp/assets" "$tmp/classes" "$tmp/dex"
cp "$apk" "$tmp/assets/candidate.apk"
if [[ "${2:-}" == "--rust-jni" ]]; then
  printf '1\n' > "$tmp/assets/rust_abi_enabled.txt"
fi
# Derive every exact family descriptor (including $$) from the built source inventory.
python3 - "$tmp/assets/family.txt" <<'PY'
import pathlib,re,sys
root=pathlib.Path("Cinemana_PATCH252_Project/app")
names=set()
for p in root.glob("smali*/com/shabakaty/cinemana/ca1/BatchDownload*.smali"):
    m=re.search(r"^\.class\s+.*?(L[^;\s]+;)",p.read_text(),re.M)
    if not m: raise SystemExit("missing class descriptor")
    names.add(m[1][1:-1].replace("/","."))
assert "com.shabakaty.cinemana.ca1.BatchDownload$Screen" in names and len(names)>=20
pathlib.Path(sys.argv[1]).write_text("\n".join(sorted(names))+"\n")
PY
javac -source 8 -target 8 -classpath "$platform" -d "$tmp/classes" "$src/Probe.java"
jar cf "$tmp/probe.jar" -C "$tmp/classes" .
"$tools/d8" --lib "$platform" --min-api 23 --output "$tmp/dex" "$tmp/probe.jar"
"$tools/aapt" package -f -M "$src/AndroidManifest.xml" -I "$platform" -A "$tmp/assets" -F "$tmp/unsigned.apk"
(cd "$tmp/dex" && zip -q "$tmp/unsigned.apk" classes.dex)
keytool -genkeypair -keystore "$tmp/probe.jks" -storepass android -keypass android -alias probe -keyalg RSA -validity 100 -dname "CN=Isolated CP-DL CI" >/dev/null 2>&1
"$tools/zipalign" -f 4 "$tmp/unsigned.apk" "$tmp/aligned.apk"
"$tools/apksigner" sign --ks "$tmp/probe.jks" --ks-key-alias probe --ks-pass pass:android --key-pass pass:android --out "$tmp/probe.apk" "$tmp/aligned.apk"
adb shell getprop ro.build.version.sdk | tr -d '\r' | grep -x 35
adb install "$tmp/probe.apk"
# Hard fail for a crash, timeout, missing explicit success, or an unsuccessful instrumentation result.
timeout 180 adb shell am instrument -w -r cpdl.artprobe/.Probe | tee "$tmp/result.txt"
grep -F 'CPDL_ART_PASS family=' "$tmp/result.txt"
if [[ "${2:-}" == "--rust-jni" ]]; then
  grep -F 'CPRUST_R1_JNI_PASS abi=1' "$tmp/result.txt"
  grep -F 'CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1' "$tmp/result.txt"
fi
grep -E 'INSTRUMENTATION_CODE: -1' "$tmp/result.txt"
if grep -qE 'CPDL_ART_FAIL|INSTRUMENTATION_FAILED|Process crashed' "$tmp/result.txt"; then exit 1; fi
adb uninstall cpdl.artprobe
