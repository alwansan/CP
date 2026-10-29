# Cinemana source-first recovery workspace

This directory is an independent reverse-engineering workspace originating from
`feature/local-account`. It is kept on `experiment/rea-source-recovery`.

## Current result

- 11 DEX archives decompiled with JADX 1.5.6 (10,381 Java files in full ZIP).
- 293 application-package Java files staged under `generated/java/com/shabakaty/cinemana`.
- 558 directly referenced obfuscated Java files staged under `generated/java/com/shabakaty/downloader`.
- Unstaged sources are still available in the archived release snapshot.
- `WorkFolders104.name` rebuilt from the Smali control flow and tested in 19 cases.
- `BatchLog.lambda$init$1` rebuilt from Smali and tested in 10 cases.
- All seven methods formerly marked `Method not decompiled` within the 293-file first-party package have now been reconstructed from Smali/REA.
- The latest source audit reports **zero unresolved method markers** in first-party Java; the remaining first-party Java syntax blocker is **MkvExporter.promoteDatabase**. The second remaining syntax blocker (`gk1`) is generated Data Binding source.
- Latest JDK syntax audit: **849/851 staged Java files parse successfully; 2 still have syntax errors** (`MkvExporter`, generated Data Binding `gk1`).
- The 8-method regression workflow passes **112 tests**: enhancements (15), coroutine (12), subtitle renaming (14), subtitle preview (11), H264 readiness (14), episode retrieval (17), MKV video watcher (14), and MLKit/GMS SQLite schema validation (15).
- New `modernized/core-downloads` has a **fail-closed, read-only** preflight for MKV database promotion with **19 passing JDK tests**; this does not overwrite the legacy transaction. (Run 40920074702)
- New `modernized/core-downloads/MkvPromotionCoordinator` models three-store compensating rollback, readback verification and explicit `ROLLBACK_FAILED` reporting; **60 Java assertions pass** using failure-injected fake stores. No production DAO connected; crash safety still requires a durable journal. (Run 40923843681)
- New `SearchScreenRefs` in `legacy-resources` maps eight original search view IDs; **34 XML/gk1 structural checks pass**, and the Android module compiles. The complete LiveData/DataBinding bridge is not yet reconstructed. (Run 40920074702)
- New `modernized/core-search` implements `RECENT/EDITING/LOADING/RESULTS/EMPTY`, stale-response rejection and tab state with **41 Java assertions** (run 40923843681). `SearchLiveDataBridge` and port-based `SearchScreenController` wire it to AndroidX Lifecycle and original stable search IDs; AppCompat/Material adapters remain a future integration boundary.
- Actual Android Gradle Library `modernized/android-bridge` with Media3 compiles.
- `modernized/legacy-resources` builds original APKTool `res` and `assets` into an Android AAR (verified by GitHub Actions run 40911283952).
- `modernized/android-smoke` now builds a **diagnostic-only** signed Android APK under `com.shabakaty.cinemana.recovery.smoke` with Media3, the original 49 native shared libraries, and bundled `res`/`assets` including `ffmpeg`. Verified full integration: run 40911943683. This is not Cinemana or a substitute for its UI/account/download/player behavior. The Android 10 x86_64 emulator installation passed in run 40914736533: APK installed and launched, and the UI displayed Media3 High 10 adapter: PASS.
- The updated diagnostic Android app ran successfully on Android 10 emulator with **Media3 High 10 adapter: PASS**, **MKV promotion preflight: PASS** and **Original search layout: PASS** (run 40919940462). These are diagnostic subsystem checks, not original Cinemana app functionality.
- The newer interactive `SearchFlowActivity` diagnostic has passed an Android 10 UIAutomator-driven **fixture search submission, simulated 3 results, filter action and clearing the query**. (run 40929129643). The emulator also verified tab selection (`tab=1`) after search/clear. The search is not connected to Cinemana services or the original gk1-generated Binding.
- The `legacy-resources` Gradle module stages a copy of the APKTool res folder and removes only 3 overlapping font attributes already provided by AndroidX Core. Source APKTool files stay byte-for-byte unmodified; this avoids AndroidX resource-merging collisions during diagnostic APK builds.
- Native and resource AAR compilation does not imply original Cinemana app functionality.
- `modernized/legacy-native` packages 49 shipped ABI-specific `.so` libraries without rebuilding FFmpeg (CI verifies packaging).

## Source files and reports

- `generated/java/`: staged reconstructed Java, including obfuscated dependency layer
- `reports/java_inventory.json`: original source extraction inventory
- `reports/OBFUSCATED_DEPENDENCIES.md`: first-layer dependency mapping
- `reports/SOURCE_DEPENDENCY_AUDIT.md`: remaining decompiler problems and import boundaries
- `reports/REMAINING_BLOCKERS_AR.md`: syntax blocker classification and next steps
- `reports/REA_INDEPENDENT_DECOMPILATION_AR.md`: REA results, unresolved type placeholders, and Data Binding caveats
- `reports/SAFE_MIGRATION_AND_SEARCH_BINDING_AR.md`: non-mutating MKV DB preflight and original search UI structure
- `reports/TRANSACTION_AND_SEARCH_STATES_AR.md`: rollback failure injection, LiveData state and resource integration caveats
- `tests/episodes/`, `tests/mkvwatcher/`, `tests/sqliteschema/`: real-body Java regressions for episode network handling, completed-video export readiness, and SQLite schema verification
- `modernized/`: distinct Gradle modules, separately compiled and tested
- `tests/workfolders/`: actual Java source with test doubles for reflection-based callers
- `tests/batchlog/`: actual Java source compiled with isolated Android test doubles
- `tests/enhancements/`, `tests/renameassets/`, `tests/coroutine/`, `tests/subtitlepreview/`, `tests/renderer/`: tests extracting the real restored method bodies
- `scripts/`: repeatable recovery and audit tools

## Key rules

1. The original APKTool/Smali tree is still the reference build. No change has been made to it here.
2. A successful Java decompilation does not imply a compilable APK.
3. These classes are not yet fully classified as app code versus shaded third-party libraries.
4. A Gradle AAR is not a full Android application APK; UI, lifecycle, database, notifications, download manager and player integrations remain.
5. Avoid using both decompiled third-party libraries and Maven versions in the same Android module to prevent duplicate classes.
6. Don't merge to main or feature/local-account before integration tests and actual device testing are complete.

## Build and tests

Use the workflow [REA Android bridge](https://github.com/alwansan/CP/actions/workflows/rea-android-bridge.yml)
for Gradle build and JNI AAR checks, and the dedicated WorkFolders104 and BatchLog workflows for regression tests.

Rebuild the baseline APK without source-first migration:
```sh
bash Cinemana_PATCH252_Project/build.sh
```

Build the reconstructed Gradle libraries:
```sh
cd recovery/modernized
gradle --no-daemon :core-video:check :core-downloads:check :core-search:check :android-bridge:assembleDebug :legacy-native:assembleDebug :legacy-resources:assembleDebug :android-smoke:assembleDebug
```
