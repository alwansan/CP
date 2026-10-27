# PATCH262 helper sources

The tracked `ContinueActions262*.smali` and `MkvCancel262.smali` files are compiled from Java 8 sources using D8 8.3.37. This keeps the new menu, selection and cancellation logic out of manually allocated Smali registers. Stubs only describe existing app APIs; neither stubs nor host tests are packaged in the APK.

Regenerate with Java 17 and Python 3:

```bash
python patches/patch262/build_helpers.py --android-jar /path/to/android.jar --r8-jar /path/to/r8.jar --test --emit-smali
```

Pinned dependencies (SHA-256 is checked by the script):

- Android API jar: `https://repo.maven.apache.org/maven2/com/google/android/android/4.1.1.4/android-4.1.1.4.jar`
- R8/D8: `https://storage.googleapis.com/r8-releases/raw/8.3.37/r8.jar`

CI runs `--test` against the Java sources, linkage/field-access regression checks, existing recovery control-flow tests, and a full apktool build/signature verification. Host tests use a fake scheduler/process and fake context, and do not exercise Android rendering, touch dispatch, navigation or real FFmpeg termination. Those require an Android device.

The native wide-card binding `i42` and Show More fragment `n54` retain their fully qualified class names but live in `smali_classes6`. Moving these classes avoids the method-reference limit in the first DEX.
