# CP-DL / Native-Compose — Session 94 (2026-11-21)

## Scope and starting truth
- Repo `alwansan/CP`, writable **Native-Compose only**; identity CP-DL. Head at entry `8b8ccca895c6688b66f698a9811dad23085ca0dc`.
- Session93 integrated run [44854644442](https://github.com/alwansan/CP/actions/runs/44854644442) **completed SUCCESS**, code 605ed9d; actual signed original ART, real owner IPC and Compose UI, populated rows, test x86 three-worker remux, six test MKVs in two batches.
- CI sample idle median315/max542ms, pressure median262/max329ms local read during 22 test batches; independent x86 idle median312/max1145ms, pressure268/max545ms; presentation auto1029/next517/first310ms. Emulator variance; cannot attribute a performance improvement or claim no lag on phone.

## Code changed
- Commit [`a667ed445d489fc47f3f4fb68626a1fd9f82bf74`](https://github.com/alwansan/CP/commit/a667ed445d489fc47f3f4fb68626a1fd9f82bf74): `patches/native-compose-real-owner/OwnerProbe.java`, `run-runtime.sh`.
- After existing 49-row original Room keyset/24+24+1 checks, while in a rollback-only transaction, read a 24-item page with the same `OwnerPageRead`; insert item `cp-owner-probe-000` with original generated DAO; verify the old first row moved to index1 but retained its HMAC displayKey. Verify first immutable page unchanged, inserted key distinct, and independent reader lifetime uses a distinct key.
- New mandatory `CP_REAL_OWNER_KEYS_SHIFT_PASS rows=49 shiftedIndex=1 stable=verified readerIsolation=verified rollback=verified` marker. All raw IDs remain inside the test; no public endpoint, native command or production DAO mutation committed.

## CI checkpoint
- [44855997685](https://github.com/alwansan/CP/actions/runs/44855997685) started and **in_progress** when notes were written. This is not yet a verified PASS; inspect run/job, diagnostics and ART/rollback.
- Existing monitoring automation remains disabled, untouched. No production APK or released same-package candidate.

## Next
Verify the run and update all memory files with its exact outcome; repair under Native-Compose only if failed. Once verified, add cross-process populated-row shift consistency and meaningful ARM64 frame/latency evidence under original exporter/lease pressure. Do not relax tests or alter original downloads, schema, launcher or signing.
