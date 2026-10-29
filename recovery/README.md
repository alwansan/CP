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
- The latest source audit reports **zero such unresolved method markers**, but still **two first-party files with Java syntax failures** (`Episodes107` and `MkvExporter`).
- Latest JDK syntax audit: **846/851 staged Java files parse successfully; 5 still have syntax errors**.
- The four recently repaired methods passed **52 actual-Java unit tests**, and the H26410 readiness method passed **14** more.
- Actual Android Gradle Library `modernized/android-bridge` with Media3 compiles.
- `modernized/legacy-native` packages 49 shipped ABI-specific `.so` libraries without rebuilding FFmpeg (CI verifies packaging).

## Source files and reports

- `generated/java/`: staged reconstructed Java, including obfuscated dependency layer
- `reports/java_inventory.json`: original source extraction inventory
- `reports/OBFUSCATED_DEPENDENCIES.md`: first-layer dependency mapping
- `reports/SOURCE_DEPENDENCY_AUDIT.md`: remaining decompiler problems and import boundaries
- `reports/REMAINING_BLOCKERS_AR.md`: five remaining Java syntax blockers, classification, and next steps
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
gradle --no-daemon :core-video:check :android-bridge:assembleDebug :legacy-native:assembleDebug
```
