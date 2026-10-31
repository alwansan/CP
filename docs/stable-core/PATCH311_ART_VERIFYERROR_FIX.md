# PATCH311 — Emergency Android 15 VerifyError repair for PATCH310

## Evidence and cause
After installing PATCH310, the user uploaded fresh LogFox crash reports to `alwansan/CL/logfox`, three newly reported stack traces (5–7). They consistently show `java.lang.VerifyError` while instantiating `HomeActivity`, because base `com.shabakaty.downloader.hx2.onCreate(Bundle)` at Dex offset `[0xEE]` has `register v0 has type Undefined but expected Integer`. The PATCH310 restore-specific branch jumps over the original `const v0, 0x7f0a0305` Home tab ID initializer. The original fresh flow initializes `v0` but the new restored flow did not; ART verifier rejects it even for fresh launches.

## Minimal repair
Add `const v0, 0x7f0a0305` directly after the superclass `onCreate` return and **before** the branch discriminating saved state. Both branches now carry a defined integer value of `v0`; keep the existing original definition in the cold-start flow for identical semantics.

Do not alter `VideoPlayerActivity`, the original `d15` detail-launch code, the restored NavHost-preserving branch, any background downloads/MKV/notifications, or any manifest flags.

## Regression
`scripts/test_stable_diagnostics.py` now asserts `v0` is defined with the expected integer before the saved-instance-state jump. The existing PATCH310 static checks still assert that restored navigation avoids destructive fragment detachment, clearing lists, and default Home selection. GitHub CI can test assembly and signatures but **cannot guarantee ART verifier acceptance on the user's Android 15 phone**.

## User test / recovery
If PATCH310 still crashes on launch, do not clear app data: install signed PATCH311 APK over it. First confirm Home launches. Then navigate to details, play video and press Back; must return to the same work details. Repeat after lock/unlock and background/foreground. Upload LogFox crash if any, plus updated `load_diagnostics.main.jsonl` and `ui_performance.jsonl` to `CL`. PATCH309 signed APK is known to have completed a normal user test and is a fallback if PATCH311 fails, but PATCH309 **does not contain** the navigation restoration change.
