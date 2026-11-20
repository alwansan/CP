#!/usr/bin/env bash
set -euo pipefail
# CI only: never copy this binary into the production APK or asset tree.
ROOT="$RUNNER_TEMP/cp-x86-remux"
NDK="$ANDROID_HOME/ndk/27.2.12479018"
TOOL="$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin"
mkdir -p "$ROOT"
git init "$ROOT/source"
git -C "$ROOT/source" remote add origin https://github.com/FFmpeg/FFmpeg.git
git -C "$ROOT/source" fetch --depth 1 origin refs/tags/n7.1.5
git -C "$ROOT/source" checkout --detach FETCH_HEAD
test "$(git -C "$ROOT/source" rev-parse HEAD)" = 3a0867c2bfda4a4d4309ca1a8cbdc6175e67f587
cd "$ROOT/source"
./configure --target-os=android --arch=x86_64 --enable-cross-compile \
  --cc="$TOOL/x86_64-linux-android28-clang" --cxx="$TOOL/x86_64-linux-android28-clang++" \
  --ar="$TOOL/llvm-ar" --ranlib="$TOOL/llvm-ranlib" --nm="$TOOL/llvm-nm" --strip="$TOOL/llvm-strip" \
  --disable-shared --enable-static --disable-doc --disable-debug --disable-network \
  --disable-autodetect --disable-x86asm --disable-ffplay --disable-ffprobe \
  --disable-avdevice --disable-postproc --disable-everything --enable-ffmpeg \
  --enable-protocol=file --enable-demuxer=mov --enable-muxer=matroska \
  --enable-parser=mpeg4,aac --enable-decoder=mpeg4,aac --enable-bsf=aac_adtstoasc,extract_extradata \
  --enable-filter=buffer,buffersink,abuffer,abuffersink,format,aformat,null,anull
make -j2 ffmpeg
cp ffmpeg "$ROOT/ffmpeg"
file "$ROOT/ffmpeg"
"$TOOL/llvm-readelf" -h "$ROOT/ffmpeg" | grep -F 'Advanced Micro Devices X86-64'
# Host tool generates only original synthetic test media, no service/network files.
ffmpeg -nostdin -hide_banner -loglevel error -y -f lavfi -i 'testsrc2=size=640x360:rate=24' \
  -f lavfi -i 'sine=frequency=440:sample_rate=48000' -t 60 -c:v mpeg4 -q:v 4 -threads 2 -c:a aac "$ROOT/input.mp4"
sha256sum "$ROOT/ffmpeg" "$ROOT/input.mp4" > "$ROOT/sha256.txt"
