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

# Fixed argv control protocol for UiAutomation (no shell syntax in Java).
adb shell "cat > $REMOTE/control.sh" <<'CP_CONTROL_EOF'
#!/system/bin/sh
set -eu
cd /data/local/tmp/cp-remux-probe
action="$1"
n="$2"
case "$n" in 1|2|3) ;; *) exit 2 ;; esac
pid_file="pid-$n"
read_pid() {
    if [ -f "$pid_file" ]; then
        p=$(cat "$pid_file")
        case "$p" in ''|*[!0-9]*|0) p=0 ;; esac
    else
        p=0
    fi
}
owned() {
    [ "$p" -gt 0 ] &&
    kill -0 "$p" 2>/dev/null &&
    [ "$(readlink "/proc/$p/cwd" 2>/dev/null)" = /data/local/tmp/cp-remux-probe ] &&
    [ "$(cat "/proc/$p/comm" 2>/dev/null)" = ffmpeg ]
}
case "$action" in
    start)
        # No shell metacharacters are passed through UiAutomation. Detach the
        # wrapper's three standard descriptors inside this actual shell.
        [ ! -e "launch-$n" ] || exit 3
        : >"launch-$n"
        (trap '' HUP; exec /system/bin/sh ./worker.sh "$n") \
            </dev/null >"launcher-$n.log" 2>&1 &
        echo launched
        ;;
    pid) read_pid; echo "$p" ;;
    size) if [ -f "out-$n.mkv" ]; then stat -c %s "out-$n.mkv"; else echo 0; fi ;;
    alive) read_pid; if owned; then echo alive; else echo dead; fi ;;
    done) if [ -f "exit-$n" ]; then echo yes; else echo no; fi ;;
    exit) if [ -f "exit-$n" ]; then cat "exit-$n"; else echo missing; fi ;;
    cleanup)
        read_pid
        if owned; then kill "$p" 2>/dev/null || exit 4; fi
        echo ok
        ;;
    *) exit 2 ;;
esac
CP_CONTROL_EOF
adb shell chmod 700 "$REMOTE/control.sh"
# Validate the shell script and initial state before instrumentation.
adb shell sh -n "$REMOTE/control.sh"
test "$(adb shell sh "$REMOTE/control.sh" pid 1 | tr -d '\r')" = 0
test "$(adb shell sh "$REMOTE/control.sh" size 1 | tr -d '\r')" = 0
test "$(adb shell sh "$REMOTE/control.sh" done 1 | tr -d '\r')" = no
test "$(adb shell sh "$REMOTE/control.sh" cleanup 1 | tr -d '\r')" = ok
