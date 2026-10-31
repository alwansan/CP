# PATCH319: faster single-worker MKV recovery, no redundant ledger flushes

## Pinned evidence
CL new stress commit `1ecc558ac2aca98b81ffddc048cb3666df18005f` at 21:04 Asia/Baghdad Oct 31, 2026 confirms **PATCH318** on phone. Tree: **28 final MKV, 59 work MP4, 3 MP4.temp**. These are ongoing new downloads, not the deleted historical test. Repair ledger 20 pending (12 WAITING_PLAN_OR_SUBTITLES, 7 MKV_QUEUED and 1 MKV_QUEUE_REJECTED). Some pending subtitles are not committed; we MUST NOT treat any MP4 lacking a verified expected subtitle plan as safe to convert.

PATCH318 main process on-device sampled native heap plateau around **121MB**, RSS mostly 268–373MB after startup, but CPU still up to **45 seconds per 15-second window** and UI had ongoing dropped frames. This supports that prior DAO caching helped eliminate a severe repeated DB builder path but not all workload.

Checked **12 individual recent per-episode FFmpeg logs** (Naruto 29–42). All completed conversions use **video and audio stream copy**, no CPU re-encode, with subtitle copied from a verified input. Typical measured *actual FFmpeg* process **4.9–8.5s**, plus **~1–2s** DB/organize/cleanup. But there is a repeatable **~7–10 second gap** between the previous final successful MKV promotion and the next item's SUBTITLE_POLICY/FFmpeg start. This is the high-value optimization target — not replacing the native muxer or re-encoding.

A root cause contributing to gap: in `MkvReconciler.auditFinished` the only background audit scheduler sleeps **5 seconds** after every scan while MP4s exist, and `requestAudit` does not preempt already-pending delayed audits. With 59 completed/partial files and only 8 candidates each pass, some ready inputs wait repeated audit rounds. Additionally, `MkvRepairLedger.record()` re-read and completely rewrote the recovery Properties file every time the same state was reobserved with a new timestamp. `clear()` wrote even when absent. This creates avoidable I/O and contention. The gap also can include other work; 5 seconds is a known contribution, **not proven the whole 7–10s**.

## PATCH319 changes
- Reduce the periodic *work-exists* audit delay from **5000ms to 1500ms**, preserving a single scheduled executor, one pending audit coalescing, oldest-first ordering, and a maximum of **8 MP4 candidates per scan**. When work is absent, auditing stops. An immediate explicit audit request still uses **250ms**.
- `MkvRepairLedger.record()` keeps previous paths/target, writes the Properties file only if **status + source + target + reason** changed, ignoring the generated timestamp; this preserves all recovery transitions, crash persistence and old paths. `clear()` skips disk write when there is no key to clear.
- Timestamp only the start and return of each `runRecovered` task in `Cinemana/work/log/.mkv_export.log`, under `PATCH319_EXPORT_JOB_START/RETURN`, so the next CL snapshot will separate queue delay, preparation, and actual FFmpeg duration. No personal filename/token added in these markers.
- **Still just one FFmpeg conversion at a time.** Original `-c:v copy -c:a copy`, verified subtitles, unique DB identity, existing output staging/rollback/cleanup, persistent sidecars, and FileDownloader callbacks remain unchanged. No deletion of existing work data.

## Validation and limitations
New `scripts/test_patch319_mkv_audit_pacing.py` checks audit schedule/limit/sorting, ledger skip-if-identical, one FFmpeg worker, stream-copy and safety checks. CI builds signed release. Real device must measure stage/gap times, RSS/native/Java heap, frame stalls and final MKV rate. Faster audit cadence increases background checks, but avoiding repeated ledger writes and retaining 8-scan cap should contain I/O. If CPU/frames worsen, prefer reverting timing change, while keeping no-op ledger-write improvement. **Physical media remux I/O cannot be reduced to zero; do not claim a 10x speedup.**

## CI note
PATCH319 static regression was corrected to match the actual Smali branch label rather than its earlier jump operand; this is a test-only fix. Re-run the full protected build against the corrected test before accepting a signed APK.

## Recovery flow regression synchronization
After changing the intended active-work audit cadence to 1500 ms, the interpreted Smali flow test `scripts/test_recovery_flow.py` was updated from its previous 5000 ms expectation. The same safety properties and no-work scheduling assertions remain; full CI still required before release.
