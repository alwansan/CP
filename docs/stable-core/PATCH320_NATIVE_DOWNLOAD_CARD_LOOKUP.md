# PATCH320 — Downloads card native ID lookup, plus PATCH319 accelerated MKV recovery

## Pinned source
New actual PATCH318 phone telemetry from CL commit `1ecc558ac2aca98b81ffddc048cb3666df18005f` (21:04 Asia/Baghdad) showed 28 final MKV, 59 MP4, 3 temp; Native heap mostly 121 MB later in run, and main CPU/GC activity still elevated. The UI trace includes a downloads stall in native resource identifier resolution, though it does not name Native98 specifically. Independent source inspection confirms `Native98.find(View,String)` traverses the entire view tree and invokes `Resources.getResourceEntryName` on every descendant, on each `Native98.bind` invoked for download-card selection. It only searches `download_button` in the examined binding method, whose public.xml resource ID is **0x7f0a0146**.

## Scoped optimization
- Short-circuit `Native98.find` only for the **verified download_button ID**, via `View.findViewById(0x7f0a0146)`. Unknown future view name strings continue through the original recursive finder. All card checkbox/selection, visibility, reflection and downloads UI/notification callbacks remain unchanged.
- Retain PATCH319's **single FFmpeg exporter** and accelerated 1.5-sec / max eight oldest-first audit; no-op ledger records; PATCH318 singleton Room DAO; PATCH317 recycler fast view ID lookup; PATCH315 FileDownloader messenger null guard. FFmpeg already runs `-c:v copy -c:a copy` and remuxes only, no re-encode.
- Add `scripts/test_patch320_native_card_lookup.py` static test verifying public resource ID and exact behavior/fallback, run all prior regressions, full Smali/DEX/signing CI.

## Remaining risks
This eliminates an objectively expensive recursive resource-name lookup but cannot by itself explain all UI stalls, high binder work, Java GC or MKV backlog. 59 concurrent MP4 sources plus insufficient subtitle commits may remain. PATCH319 gap improvement remains **unverified on device** despite full CI success. The current version's native perf requires Android trial; do not overclaim performance or remove work files.
