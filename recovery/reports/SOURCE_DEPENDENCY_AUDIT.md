# Recovered Java dependency and quality audit

> The reconstructed Java is **not yet compilable** as a complete Android app. This report identifies preparation work for safe Gradle migration.

- First-party Java files analyzed: **293**
- Complete JADX Java snapshot: **10381** files from **11** DEX files.
- Obfuscated `com/shabakaty/downloader` package: **7770** Java files in the full ZIP, **not** duplicated in the staged subset.

## Import families used by recovered first-party classes

| Family | Unique imported types | Source files using it |
|---|---:|---:|
| `java` | 102 | 158 |
| `com.shabakaty.downloader` | 541 | 157 |
| `android` | 129 | 155 |
| `com.liulishuo` | 5 | 145 |
| `com.shabakaty.cinemana` | 106 | 143 |
| `kotlin` | 2 | 118 |
| `androidx` | 27 | 50 |
| `com.connectsdk` | 17 | 48 |
| `com.cinemana` | 3 | 32 |
| `zendesk` | 7 | 16 |
| `com.facebook` | 23 | 11 |
| `com.google` | 8 | 11 |
| `org.json` | 3 | 8 |
| `com.shabakaty` | 3 | 5 |
| `com.onesignal` | 2 | 2 |
| `androidx.media3` | 1 | 1 |
| `io.github.anilbeesetti` | 2 | 1 |
| `com.rd` | 1 | 1 |
| `com.google.firebase` | 1 | 1 |

## Recoverability signals

| Signal | Affected files |
|---|---:|
| `decompiler_errors` | 0 |
| `decompiler_warnings` | 0 |
| `unreconstructed_method` | 7 |
| `synthetic_dependencies_on_other_R` | 10 |

## Representative source files needing inspection

### unreconstructed_method
- `com/shabakaty/cinemana/ca1/BatchLog.java`
- `com/shabakaty/cinemana/ca1/Enhancements.java`
- `com/shabakaty/cinemana/ca1/WorkFolders104.java`
- `com/shabakaty/cinemana/features/DownloadTrace.java`
- `com/shabakaty/cinemana/features/RenameAssets.java`
- `com/shabakaty/cinemana/mod/SubtitlePreviewTask.java`
- `com/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl.java`

### decompiler_errors
- No matches under this marker

### synthetic_dependencies_on_other_R
- `com/shabakaty/cinemana/ca1/I18n161.java`
- `com/shabakaty/cinemana/ca1/Restart108.java`
- `com/shabakaty/cinemana/ca1/Settings94.java`
- `com/shabakaty/cinemana/ca1/ThemeEngine142.java`
- `com/shabakaty/cinemana/features/MkvExporter.java`
- `com/shabakaty/cinemana/features/SequentialSubtitleManager.java`
- `com/shabakaty/cinemana/local/LocalAccountActivity.java`
- `com/shabakaty/cinemana/mod/PlayerEnhancements.java`
- `com/shabakaty/cinemana/player/H26410SoftwareRenderer.java`
- `com/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl.java`

## Bundled dependency version evidence (from original APK)

| Version file | Reported version |
|---|---|
| `barcode-scanning.properties` | `16.1.1` |
| `common.properties` | `17.1.1` |
| `firebase-abt.properties` | `21.0.0` |
| `firebase-analytics-ktx.properties` | `19.0.1` |
| `firebase-analytics.properties` | `19.0.1` |
| `firebase-annotations.properties` | `16.0.0` |
| `firebase-common-ktx.properties` | `20.0.0` |
| `firebase-common.properties` | `20.0.0` |
| `firebase-components.properties` | `17.0.0` |
| `firebase-config.properties` | `21.0.1` |
| `firebase-core.properties` | `19.0.1` |
| `firebase-crashlytics.properties` | `18.2.1` |
| `firebase-datatransport.properties` | `18.0.0` |
| `firebase-encoders-json.properties` | `18.0.0` |
| `firebase-encoders.properties` | `17.0.0` |
| `firebase-iid-interop.properties` | `17.1.0` |
| `firebase-installations-interop.properties` | `17.0.0` |
| `firebase-installations.properties` | `17.0.0` |
| `firebase-measurement-connector.properties` | `19.0.0` |
| `firebase-messaging.properties` | `22.0.0` |
| `firebase-perf.properties` | `20.0.2` |
| `play-services-ads-identifier.properties` | `17.0.0` |
| `play-services-analytics-impl.properties` | `17.0.0` |
| `play-services-analytics.properties` | `17.0.0` |
| `play-services-auth-api-phone.properties` | `17.0.0` |
| `play-services-auth-base.properties` | `17.0.0` |
| `play-services-auth.properties` | `19.0.0` |
| `play-services-base.properties` | `17.4.0` |
| `play-services-basement.properties` | `17.4.0` |
| `play-services-cast-framework.properties` | `19.0.0` |
| `play-services-cast.properties` | `19.0.0` |
| `play-services-clearcut.properties` | `17.0.0` |
| `play-services-cloud-messaging.properties` | `16.0.0` |
| `play-services-flags.properties` | `17.0.0` |
| `play-services-measurement-api.properties` | `19.0.1` |
| `play-services-measurement-base.properties` | `19.0.1` |
| `play-services-measurement-impl.properties` | `19.0.1` |
| `play-services-measurement-sdk-api.properties` | `19.0.1` |
| `play-services-measurement-sdk.properties` | `19.0.1` |
| `play-services-measurement.properties` | `19.0.1` |
| `play-services-mlkit-barcode-scanning.properties` | `16.1.4` |
| `play-services-phenotype.properties` | `17.0.0` |
| `play-services-stats.properties` | `17.0.0` |
| `play-services-tagmanager-v4-impl.properties` | `17.0.0` |
| `play-services-tasks.properties` | `17.2.0` |
| `protolite-well-known-types.properties` | `18.0.0` |
| `transport-api.properties` | `3.0.0` |
| `transport-backend-cct.properties` | `3.0.0` |
| `transport-runtime.properties` | `3.0.0` |
| `vision-common.properties` | `16.3.0` |

## Rules for reconstruction

1. Preserve the original APKTool tree as the known-buildable reference and do not touch main or feature/local-account.
2. Do **not** mix decompiled third-party AndroidX/Firebase/Fresco classes with their Maven binaries in one Gradle module; duplicate classes break builds.
3. First confirm exact dependency coordinates, versions, and ABI needs against bytecode, APIs, and the shipped .so files; .properties versions are useful evidence, not complete dependency resolution.
4. Retain the shipped FFmpeg/Media3 native libraries initially; link JNI with ABI-correct jniLibs only after testing compatibility. Not every ABI contains every library.
5. Resolve the many com.shabakaty.downloader class references before compiling first-party packages; some names are obfuscated application code, not a reusable public library.
6. Repair unsupported decompiler output and synthetic R constants against Smali evidence. A Java file existing does not mean it compiles or behaves correctly.
7. Preserve package id com.cinemana.pro, original resources, manifest, permissions, data schemas, and signing/update behavior during migration.

## Next objective

Build a dependency graph of the essential startup/UI/player classes and create a Gradle module in stages, running compile and instrumentation checks before replacing the existing Smali APK release pipeline.
