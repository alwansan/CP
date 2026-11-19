#!/usr/bin/env bash
set -euo pipefail
# Reuse verified black-box runtime smoke without altering the R8 workflow.
# The path is the existing disposable checkout's output path, not the original app.
mkdir -p patches/compose-lab/app/build/outputs/apk/release "$RUNNER_TEMP/cp-isolation-probe"
cp "$RUNNER_TEMP/cp-combined/combined-lab.apk" patches/compose-lab/app/build/outputs/apk/release/app-release.apk
python3 patches/native-compose-isolation/smoke-r8-runtime.py 2>&1 | tee "$RUNNER_TEMP/cp-combined/runtime.log"
grep -q 'CP_NATIVE_R8_RUNTIME_PASS' "$RUNNER_TEMP/cp-combined/runtime.log"
echo CP_COMBINED_STANDALONE_RUNTIME_PASS
