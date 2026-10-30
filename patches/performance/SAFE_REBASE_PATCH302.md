# PATCH302: Safe UI-only rebase of local-account

New branch starts from `feature/local-account` at `82d7f67037f67659115d41782d3a9b5bf4e0bd02`. Original performance branch differed by 126 commits and modified Continue106, Episodes107, DownloadTrace and other features unrelated to UI. Those changes are NOT imported.

Selected UI optimizations only: reduced implicit LayoutTransition on API22+ detail layout (description animation preserved), Home RecyclerView bounded viewport, disabled implicit animation on Franchises root layout, bounded horizontal poster card cache and duplicate text binding skips, with original item animators and original marquee/poster animations preserved.

All backend code remains byte-for-byte identical to local-account base for Continue106, Episodes107, Queue110, BatchDownload, Restart108, DownloadTrace, MkvManifestStore, CnmDownloadQueue, RenameAssets, LocalRuntime, LocalEpisodeJob, LocalAccountStore. Signed release CI checks Git blob SHA for all files plus DEX consistency.

CL logs show multi-download queue admission accepted=220 and accepted=247 without enqueue failure, plus separate `ambiguous exact native subtitle task` error. Actual user-visible download failure not yet proven to originate in a specific patch. On-device test must include multiple simultaneous downloads, resume after background, MKV, subtitles, and notification delivery. No main changes.

Build fix: Android primary DEX exceeded 65535 method/type references in local-account baseline. Relocate 4 byte-identical ExoPlayer RTSP smali files (c,d,f,h) to smali_classes10. No code or API changes; CI verifies original blob hashes and one-copy placement.
