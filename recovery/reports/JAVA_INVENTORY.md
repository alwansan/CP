# Java recovery inventory

> This is a **decompilation checkpoint**, not a working Android Studio project.

- APK SHA256: `f070e53568fac340796c468cbcdbcab5f6e332d390fef866a0ecfacd589cb434`
- DEX inputs: **11**
- Total reconstructed Java files: **10381**
- First-party `com/shabakaty/cinemana` Java files: **293**
- Java files committed to branch: **293**
- Stage mode: `full-first-party`

## Largest source package groups

| Package prefix | Java files |
| --- | ---: |
| `com/shabakaty/downloader` | 7770 |
| `com/shabakaty/cinemana` | 293 |
| `com/google/android` | 236 |
| `com/facebook/imagepipeline` | 201 |
| `com/liulishuo/filedownloader` | 103 |
| `zendesk/support/request` | 99 |
| `com/facebook/drawee` | 69 |
| `com/facebook/common` | 63 |
| `com/shabakaty/usermanagement` | 61 |
| `com/connectsdk/service` | 58 |
| `com/facebook/appevents` | 55 |
| `zendesk/messaging/ui` | 55 |
| `com/facebook/internal` | 42 |
| `androidx/recyclerview/widget` | 40 |
| `zendesk/support/guide` | 36 |
| `com/google/common` | 35 |
| `com/google/firebase` | 30 |
| `androidx/fragment/app` | 29 |
| `zendesk/support/requestlist` | 22 |
| `androidx/appcompat/widget` | 21 |

## Key points

- Full decompiled Java is available in the workflow's ZIP artifact, including obfuscated packages.
- Original Smali, resources, assets, and native libraries remain untouched.
- Maven/Gradle dependencies must be audited: do not blindly include both bundled and external classes.
- Classes containing JADX recovery warnings may need hand repair or reimplementation.

## Native ABIs

- `arm64-v8a`: 13 shared objects
- `armeabi-v7a`: 12 shared objects
- `x86`: 12 shared objects
- `x86_64`: 12 shared objects
