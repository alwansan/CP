# PATCH300 - Runtime callback class repair

User device reports NoClassDefFoundError for Continue106$ExternalSyntheticLambda3 (one dollar) in Continue106.card.
Existing Smali and tests checked Continue106$$ExternalSyntheticLambda3 (two dollars), and did not cover the reported name.
Adds an explicit one-dollar Runnable alias implementing the same WeakReference constructor and original lambda$card$5 call, changes only the class descriptor and constructor reference in card(), and retains the original two-dollar synthetic class.
All existing card post-dispatch, exception handling and original callback code remain. Static tests and signed APK DEX tests verify BOTH descriptors and that card references the one-dollar alias.
On-device installation and download-trigger testing are still required to confirm fix. No merge to main.
