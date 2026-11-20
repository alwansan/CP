#!/usr/bin/env bash
set -euo pipefail
OUT="$RUNNER_TEMP/cp-real-owner-ipc/report/remux"
REMOTE=/data/local/tmp/cp-remux-probe
mkdir -p "$OUT"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"; adb shell "rm -rf $REMOTE" >/dev/null 2>&1 || true' EXIT
mkdir -p "$OUT/device"
for n in 1 2 3; do
  adb pull "$REMOTE/exit-$n" "$OUT/device/exit-$n" >/dev/null
  adb pull "$REMOTE/worker-$n.log" "$OUT/device/worker-$n.log" >/dev/null
  adb pull "$REMOTE/out-$n.mkv" "$TMP/out-$n.mkv" >/dev/null
  test "$(tr -d '\r\n' < "$OUT/device/exit-$n")" = 0
  ffprobe -v error -show_entries stream=codec_type,codec_name -show_entries format=duration,size,format_name -of json "$TMP/out-$n.mkv" > "$OUT/probe-$n.json"
done
python3 - "$OUT" <<'PY'
import json,pathlib,sys
p=pathlib.Path(sys.argv[1])
for n in range(1,4):
    j=json.loads((p/f"probe-{n}.json").read_text())
    assert {x["codec_type"] for x in j["streams"]}=={"audio","video"}
    assert "matroska" in j["format"]["format_name"]
    assert 59.0<=float(j["format"]["duration"])<=61.0
    assert int(j["format"]["size"])>100000
print("CP_X86_REMUX_MEDIA_PASS files=3 streams=audio,video duration=60")
PY
# Do not upload temporary binaries or synthetic full video copies.
adb shell "rm -rf $REMOTE"
