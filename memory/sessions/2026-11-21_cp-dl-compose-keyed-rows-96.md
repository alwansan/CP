# CP-DL / Native-Compose — Session 96 (2026-11-21)


## جلسة 96 — 2026-11-21 | verified IPC key shift and Compose list regression
- Final CI for session95 code `360fa13d141b0751f9d1ae6308d3dd7c6c5eff07`: four Android gates SUCCESS (44857106920 integrated, 44857106917 real IPC, 44857106969 startup on rerun attempt2, 44857107001 renderer). Integrated log explicitly includes CP_REAL_OWNER_IPC_KEYS_SHIFT_PASS rows=4,5 index=0,1 stable=verified cleanup=verified and INSTRUMENTATION_CODE -1. Verified actual cross-process HMAC key continuity for a disposable test row, not a production update.
- Session96 code [`7cf5103e947dc45a9d6ced0f40405f6992c0c333`](https://github.com/alwansan/CP/commit/7cf5103e947dc45a9d6ced0f40405f6992c0c333): new Android Compose instrumentation test in `OwnerRecompositionTest.kt` (actual `OwnerReadRows` presentation component, synthetic immutable IPC snapshots): two keyed rows with 25% and 75%; earlier unknown row arrives, previous row moves index0→1 and keeps corresponding title/progress and 64-character key; stale flag hides progress; refreshed state restores; removal cleans view. Asserts visible order by semantics bounds and removal.
- Mandatory `CP_COMPOSE_OWNER_KEYSET_SHIFT_PASS` added to `patches/compose-lab/run-android-test.sh`; expected Android JUnit tests 3 rather than 2, while all older markers retained. Compose Lab Action [44861465616](https://github.com/alwansan/CP/actions/runs/44861465616) in_progress at checkpoint. This is isolated UI, no real downloader/Room/IPC/device test in this particular workflow.
- Emulator session95 pressure report: idle local median360/max1575ms, load median547/max667ms; test sampling variable and not physical FPS. Original ARM64 exporter and full screen parity still open.
- Future: verify Compose Android run and release gate; if failed, fix without weakening tests. Only after verified success, add targeted real IPC UI row-shift rendering fixture or ergonomic improvements, then live ARM64 pressure validation with original backend (no data deletion).

## Branch and preservation
- Only `Native-Compose` modified. Source branch, Html, main and CL read-only.
- Production signing, APKTool originals, Room, account, 3 MKV slots, Lease115, UI launcher, and user data untouched.
- Tests use synthetic immutable snapshots; no unverified production installer released, no real phone performance claim.
