#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"
mkdir -p build/test-classes
javac -encoding UTF-8 -d build/test-classes \
  core-video/src/main/java/com/shabakaty/cinemana/player/H264High10Detector.java \
  core-video/src/test/java/com/shabakaty/cinemana/player/H264High10DetectorTest.java
java -cp build/test-classes com.shabakaty.cinemana.player.H264High10DetectorTest
