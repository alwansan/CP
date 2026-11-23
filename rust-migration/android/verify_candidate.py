#!/usr/bin/env python3
"""Signed R1 candidate must carry both JNI ABIs and isolated Smali entrypoint."""
from pathlib import Path
from zipfile import ZipFile
import sys

if len(sys.argv) != 2:
    raise SystemExit("usage: verify_candidate.py SIGNED_APK")
apk = Path(sys.argv[1])
assert apk.is_file()
with ZipFile(apk) as archive:
    files = set(archive.namelist())
    for abi in ("arm64-v8a", "x86_64"):
        name = f"lib/{abi}/libcp_rust_core.so"
        assert name in files, f"missing JNI binary {name}"
        info = archive.getinfo(name)
        assert info.file_size > 1000, f"empty JNI binary {name}"
        header = archive.read(name)[:5]
        assert header[:4] == bytes((127, 69, 76, 70)) and header[4] == 2, f"invalid ELF64 {name}"
    assert "AndroidManifest.xml" in files
    assert "classes11.dex" in files
root = Path("Cinemana_PATCH252_Project/app")
probe = root / "smali_classes11/com/shabakaty/cinemana/local/RustAbiProbe.smali"
body = probe.read_text()
assert body.count(".method private static native nativeVersion()I") == 1
assert body.count("Lcom/shabakaty/cinemana/local/RustAbiProbe;->nativeVersion()I") == 1
assert 'const-string v0, "cp_rust_core"' in body
# Confirm there is no production entry-point hook.
for path in [
    root / "smali/com/shabakaty/cinemana/CinemanaApplication.smali",
    root / "smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali",
    root / "smali_classes6/com/shabakaty/cinemana/ca1/Restart108.smali",
]:
    assert "RustAbiProbe;" not in path.read_text(), f"unexpected runtime hook: {path}"
print("CP-RUST-R1-CANDIDATE-OK: ARM64+x86_64 ELF; isolated JNI; no runtime hooks")
