# PATCH289 — Remove high-frequency reflection in continue-card parent lookups

PATCH288 provided 16 code-site samples. Six include Continue106.call, four Continue106.paint and three card paint callbacks, with framework java.lang.Class#getDeclaredMethodsUnchecked. This is strong evidence that dynamic method discovery during card binding contributes to main-thread stalls, while Binder and rendering stalls remain independent.

Replace reflective View.post with direct View.post on the already-retrieved bound view; replace 0-12 reflective getParent method searches with direct View.getParent, and direct HorizontalScrollVideosView.getTitle. This preserves callbacks and continue-row detection and avoids changing layout or content. The original reflective fallback remains in other paths. Watch for failures in CI and validate on device. Do NOT merge into main.
