#!/usr/bin/env bash
set -euo pipefail
ROOT="$RUNNER_TEMP/cp-x86-remux"
OUT="$RUNNER_TEMP/cp-real-owner-ipc/report/remux"
REMOTE=/data/local/tmp/cp-remux-probe
mkdir -p "$OUT"
test "$(adb shell getprop ro.kernel.qemu | tr -d '\r')" = 1
test "$(adb shell getprop ro.build.version.sdk | tr -d '\r')" = 35
test "$(adb shell getprop ro.product.cpu.abi | tr -d '\r')" = x86_64
adb shell "mkdir $REMOTE"
adb push "$ROOT/ffmpeg" "$REMOTE/ffmpeg"
adb push "$ROOT/input.mp4" "$REMOTE/input.mp4"
adb shell "chmod 700 $REMOTE/ffmpeg"
adb shell "$REMOTE/ffmpeg -version" > "$OUT/version.txt"
grep -E 'ffmpeg version (n?7\.1\.5|.*3a0867c)' "$OUT/version.txt"
cp "$ROOT/sha256.txt" "$OUT/source-sha256.txt"
# Only this disposable shell directory is used; no application media files touched.
adb shell "cat > $REMOTE/worker.sh" <<'EOF'
#!/system/bin/sh
set -eu
cd /data/local/tmp/cp-remux-probe
n="$1"
case "$n" in 1|2|3) ;; *) exit 2 ;; esac
./ffmpeg -nostdin -hide_banner -loglevel error -y -readrate 2 -i input.mp4 -map 0:v:0 -map 0:a:0 -c copy -f matroska "out-$n.mkv" >"worker-$n.log" 2>&1 &
pid=$!
echo "$pid" >"pid-$n"
set +e
wait "$pid"
status=$?
echo "$status" >"exit-$n"
exit "$status"
EOF
adb shell chmod 700 "$REMOTE/worker.sh"
