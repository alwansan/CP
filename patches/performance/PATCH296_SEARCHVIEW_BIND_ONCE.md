# PATCH296 — Avoid repeat SearchView metadata setup per binding instance

## Evidence from CL/PATCH295
The latest PATCH295 session measured 5,258 frames, 21 above 100 ms, 5 above 200 ms and worst frame 323.65 ms (non-matched workload). A single 247 ms main-thread stall sample on Search includes `gk1.i -> hx2.q0 -> px2$a.a` and `BinderProxy.transactNative`. The original first-time metadata Binder query is still on the main thread; PATCH294 only caches later queries. **This patch does not claim to eliminate the observed first-time stall.**

## One narrow change
FragmentSearchBindingImpl (`gk1.smali`) still invokes `SearchView.setSearchableInfo` on each execution of its generated binding branch, even if the same SearchView already received immutable cached metadata. Introduce **one per-binding instance boolean**; call `setSearchableInfo` only the first time for that specific view. Every newly inflated binding still configures the new SearchView. Keep `onActionViewExpanded`, `clearFocus`, query UI, navigation and all existing listeners untouched. No static references to Activity, Context or View. The static SearchableInfo cache remains PATCH294.

## Validation
- Run static guard, Smali assembly, signed DEX, APK signing checks and Continue106 synthetic callback linkage in Actions before release.
- Device: enter Search for the first time and repeatedly; type queries, interact with suggestions and keyboard; navigate between tabs and return to Search.
- Compare search navigation stalls and same-view bindings in **matched sessions**. Monitor the home frame/layout costs separately; the shared pool PATCH295 result is not a causal measurement.

Main must remain unchanged.
