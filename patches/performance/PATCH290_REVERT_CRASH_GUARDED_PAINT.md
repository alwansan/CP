# PATCH290 — Crash recovery: PATCH288 callback preserved, only paint path optimized

## Crash
Device on PATCH289: `NoClassDefFoundError` for a `Continue106$ExternalSyntheticLambda3` callback during `Continue106.card`. GitHub Actions #100 passed but runtime failed. APK-level class inventory and smali existence DO NOT guarantee dynamic loading on every device. Treat that report as a release blocker.

## Rollback
Revert commit `ad15762e708007d2c159ba7b6004a49a02c8bd0b` restores *exact* PATCH288 tree (successfully built in workflow #101). The linked prior stable APK remains `ui-performance-PATCH288-99`.

## Narrower work
This patch keeps the PATCH288 `Continue106.card` method 100% unchanged, especially its original reflection-based `post` callback and synthetic class. In `Continue106.paint` only:
- Replace repeated `getDeclaredMethods` reflection for `getParent()` with direct `View.getParent()`; stop on non-View parents to preserve old safe exit behavior.
- Replace exact Java class-name string comparison with `instance-of HorizontalScrollVideosView`.
- Read the Home rail title via `HorizontalScrollVideosView.getTitle()` directly.
- Preserve the rest of progress bar/metadata/dismissal binding logic byte-for-byte.
- Add guard that **forbids** the PATCH289 `View.post` rewrite, validates original lambda source reference, and scans the **SIGNED APK DEX** for that lambda's definition before publishing.

## Note
These are build-time checks, not a substitute for phone testing; further crash reports should lead to immediate rollback. Remaining UI stalls with Binder and RenderNode are separate investigations. Never merge into `main`.
