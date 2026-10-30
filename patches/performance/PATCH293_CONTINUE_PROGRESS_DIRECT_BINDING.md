# PATCH293 — Continue progress bar direct and idempotent binding

Latest CL PATCH292 session: 9,535 frames, 37 >100ms (0.39%), max frame 296.13ms, max main stall 300.36ms; prior PATCH291 6,085 / 47 (>100ms, 0.77%), max frame 332.88ms, max main 639ms. Different interactions, **not a controlled A/B**.

PATCH292 main-thread stall samples: Continue106.call -> Continue106.paint -> lambda$card$5 with java.lang.Class#getDeclaredMethodsUnchecked, separate LineBreaker#nComputeLineBreaksWithHelperIndex during Home layout, and Search binder transaction.

The watched `Continue106.paint` progress-bar path uses reflection on every bind for visibility, setMax, setProgress, tint, getLayoutParams, getResources and setLayoutParams. PATCH293 replaces **only this segment** with typed Android API calls, checks current values and avoids repeated setter/layout requests. It preserves the original 4dp-or-2px height, gravity CENTER_VERTICAL=16, original tint color, and `heights` map to restore the original height for non-Continue cards. The rest of `paint`, `metadata`, `Episodes107.badge`, and original `Continue106.card` and synthetic callback are unchanged.

Retain signed DEX Lambda class regression verification and static guards. GitHub Actions success alone is not a phone runtime check; verify progress visibility, positioning, and percentage on device, and re-evaluate CL. Main branch is untouched.