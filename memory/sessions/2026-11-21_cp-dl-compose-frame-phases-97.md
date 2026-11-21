# CP-DL / Native-Compose — Session97 (2026-11-21)


## Session97 — 2026-11-21: verified keyshift UI and new frame-phase diagnostic
- Verified prior five CI successes: #44861465616 standalone Lab `OK (3 tests)` + `CP_COMPOSE_OWNER_KEYSET_SHIFT_PASS`, integrated original owner UI #44861616320 `CP_REAL_OWNER_COMPOSE_KEYSET_SHIFT_PASS rows=4,5,0 index=0,1 progress=250 cleanup=verified`, companion security IPC #44861616324, startup #44861616385, renderer #44861616355, all success.
- Standalone Lab frame report before latest change: idle p95=116800823ns, p99=209617109ns, 94/97 frames over16.67ms; synthetic load p95=100104603ns, p99=150134692ns, 93/95 over16.67ms. Compare with care: x86 emulator SwiftShader and test click latency, not a verified phone FPS.
- Commit [`c9138b4d131160213c0806ff39f22d37c06992bd`](https://github.com/alwansan/CP/commit/c9138b4d131160213c0806ff39f22d37c06992bd) uses `androidx.compose.runtime.snapshots.Snapshot.withMutableSnapshot` for the synthetic progress ticker's 64 in-memory changes every 200ms, one atomic state commit instead of potentially visible intermediate writes. Runtime behavior of original downloader unchanged.
- FrameMetrics regression reports input/layout/draw/sync/gpu P95 alongside total P95/P99 and callback latency for idle and load. Repeated instrumentation gate requires `CP_COMPOSE_FRAME_PHASES_PASS metrics=input,layout,draw,sync,gpu stages=idle,load`, all prior markers, and `OK (3 tests)`.
- New test run [44867014514](https://github.com/alwansan/CP/actions/runs/44867014514) **in_progress** at checkpoint; no pass claimed and no new production APK. Next: inspect actual job result and phase split before deciding further optimization.

## Preservation and gating
- Only Native-Compose writable. Original process, Room schema, app signing, launcher, download state, offline queue, 3 MKV slots and Lease115 unchanged.
- No production APK publication. Phase metrics only from software-rendered Android emulator. Do not infer phone speed or claim zero jank.
- Historical CI runs are verified; new frame-phase test pending. Check GitHub status before claiming.
