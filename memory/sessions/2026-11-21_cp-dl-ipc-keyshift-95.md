# CP-DL / Native-Compose — Session 95 (2026-11-21)


## جلسة 95 — 2026-11-21 | IPC stable row keys after actual Room insert
- Previous Room HMAC keyshift [44855997685](https://github.com/alwansan/CP/actions/runs/44855997685) completed SUCCESS, job 136698236567. Actual signed original Room Android 15 fixture prints `CP_REAL_OWNER_KEYS_SHIFT_PASS`, both rollback and second reader lifetime isolation pass. No engine/phone claim.
- New code [`360fa13d141b0751f9d1ae6308d3dd7c6c5eff07`](https://github.com/alwansan/CP/commit/360fa13d141b0751f9d1ae6308d3dd7c6c5eff07) adds `probe-key` to non-exported same-UID `UiIpcProbeProvider`, strict array/title/key validation; returns only 64-digit HMAC and the test row index, no raw ID or command. RealOwnerService/OwnerPageRead and native UI IPC public protocol remain unchanged.
- `GateInstrumentation.UiFixture` commits five strictly-scoped emulator-only disposable rows in stages (four then one earlier, taskId=0), verifies original first row index0→1 retains the same serialized HMAC across distinct owner IPC leases, then removes exactly its own rows with existing scoped cleanup. No production APK release or real data modification.
- `native-compose-owner-ipc/run-runtime.sh` requires `CP_REAL_OWNER_IPC_KEYS_SHIFT_PASS`; integrated workflow trigger now covers test and provider changes. Four Actions: 44857106920 (integrated), 44857106917 (IPC), 44857106969 (startup), 44857107001 (renderer), all in_progress at notes checkpoint. **No verified PASS for the new code yet**.
- Further work: read actual failures if any, fix without weakening gates; after passing, consider test under reordered active visible LazyColumn and device ARM64 load. Emulator test currently does not establish touch latency/FPS or actual MkvExporter/Lease115/MuxSlotsDL execution.

## Safety boundaries
- Branch only Native-Compose; no Html/main/CL writes, no force-push.
- Same UID / nonexported diagnostic provider; strict fixed-title fixture, expected row sizes 4/5, validation of uniqueness and 64 lowercase hex.
- Original owner read service/IPC messages unchanged. Test-only app and transfer tables must start empty, offline API35 emulator, cleanup deletes fixed identities and asserts counts 0/0.
- Test function returns only opaque display key and position; raw DB identity remains native-only, not logged or emitted. Distinct reader lifetime remains intentionally nonstable, as tested in session94.
- There is no implication of a final production installer or of zero UI contention.

## CI attempt update (in session)
- 44857106969 attempt1 failed: Android pinned Robolectric dependency download returned HTTP 404, curl exit22. This is prior to compilation/runtime and occurred only in startup workflow; companion integrated/IPC/renderer workflows passed the same pinned dependency step.
- Called failed-jobs rerun successfully. Attempt2 in_progress at note checkpoint. No assertions removed or unverified fixes claimed.
