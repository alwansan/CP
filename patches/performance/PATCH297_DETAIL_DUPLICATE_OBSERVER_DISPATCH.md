# PATCH297 — Single detail LiveData refresh and bounded init timing

## Evidence and scope
The latest available CL UI JSONL is **PATCH295**, not PATCH296. PATCH295's eight detail view inflations included a max `detail_inflate_max_ms=45.41`, detail frame layout maximum `91.89ms`, and three frames >100ms (1,220 detail frames). Return navigation recreated Home views five times. These are window aggregates and do not prove the source of each delayed frame.

In `d15.smali` (VideoInfoFragment) `k2()` changes the payload in `u15.t` and then invokes `zi2.f` **twice consecutively**, without a write or state transition between calls. Verified `zi2.f` calls `getValue()` then `MutableLiveData.setValue(value)`, synchronously notifying active observers. This can trigger duplicate binding/measurement work while entering a detail screen.

## Behavior-preserving change
Retain the first refresh after setting the video model; remove only the second, identical refresh. Preserve both the data mutation and Firebase analytics event. No changes to shared-element transitions, navigation, RecyclerView adapters, details layout, player, accounts, history, notification, subscription, themes, or `Continue106.card`.

Append one `detail_ui_ready` event after `onViewCreated` synchronous setup, alongside the existing `detail_view_created` event. The time between them reveals initialization overhead; delayed rendering afterward remains separately observable through FrameMetrics. Logging remains limited to fixed event names with no content, URLs or IDs. Verify the phase duration from event timestamps, not from `detail_inflate_max_ms` alone.

## Validation
Static guards enforce exactly one `zi2.f` call in `d15.k2`, unchanged model mutation, continued Firebase analytics, new event wiring and intact `Continue106$$ExternalSyntheticLambda3`. Build/release pipeline verifies compiled Smali, DEX linkage, signing, alignment and synthetic class in signed APK.

On device, test entering/leaving details 10+ times, series and movies, poster transition, genres, episodes, related titles and player. Compare matched PATCH296 and PATCH297 journeys by frame stages, detailed entry/return timing and `detail_view_created → detail_ui_ready`. No claim of confirmed performance improvement without a matched test.

`main` remains untouched.
