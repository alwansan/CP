# PATCH294 — Reuse SearchManager searchable metadata across search-fragment recreations

## Observed: PATCH293 device session
9,977 measured frames, 57 frames >100ms (0.57%), worst frame 316.32ms, worst main-thread heartbeat sample 506.68ms. PATCH292: 9,535 / 37 (0.39%) / 296.13ms. These sessions are **not matched workloads**, so the differences do not prove a regression.

Two PATCH293 blocked UI samples:
- Search: `gk1.i -> hx2.q0 -> px2$a.a`, framework `android.os.BinderProxy#transactNative`, 248ms pending heartbeat. Search binding calls `Context.getSystemService("search")` + `SearchManager.getSearchableInfo(HomeActivity.getComponentName())` on UI thread.
- Home: `hl.a (BasicMeasure) -> ss1.layoutChild`, system property / image-layout path, 252ms pending. A ConstraintLayout solver / text layout hotspot. Not addressed by this patch.

## Safe small change
In `gk1.smali` (existing FragmentSearchBindingImpl class), cache only `SearchableInfo` and a loaded boolean in static fields. On first search view bind per app process perform exact original metadata lookup once; subsequent recreations bypass it, including null lookup. Pass the cached metadata into every new `SearchView.setSearchableInfo()`, retaining `onActionViewExpanded`, `clearFocus`, tab visibility, fragment lifecycle and navigation. No Activity/Context/View retained. The search metadata is keyed implicitly by a single HomeActivity component because the binding already casts its context to HomeActivity.

Signed APK integrity and previous PATCH289 missing synthetic Lambda verification remain mandatory. This does not move the initial Binder IPC off the UI thread, so the first search may still pause. Subsequent Home/search switches should no longer repeat the same metadata query.

## Next device test
Navigate to Search multiple times, enter queries, check suggestions/search actions and keyboard, and compare CL main-stall samples. Continue performance work on slow Home constraintlayout measurement when trace supports a specific scoped change. Do not merge to main.
