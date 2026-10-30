# PATCH291: Horizontal video card idempotent text binding

## Observed
CL session PATCH290: 4,389 frames, 22 over100ms (0.50%); worst frame 405.85ms; 395 Home frames / 16 over100ms; 4 paused main-thread code samples, 2 in androidx ConstraintLayout.onMeasure in Home and 1 in horizontal image/card binding. Compared with PATCH288 session's 4,487 frames / 59 over100ms, this suggests improvement but workloads are not controlled and a causal percentage cannot be asserted.

## Change
Android documents that repeated TextView.setText on Spanned text copies buffers and can cause layout and redraw. `g42` (horizontal card databinding) calls `nl6.r` on 2 text labels and `nl6.q` on 3 content descriptions per card rebind; `nl6.r/q` both always construct new SpannableStringBuilder/LocaleSpan. Introduce **two new helper methods** in `nl6.smali` which, **only for g42 calls**, inspect whether the existing text/description is already Spanned and content-equal to the incoming string. If yes, return without a repeated setText / setContentDescription. Otherwise fall through to original `nl6.r/q`, preserving locale spans, accessibility, Arabic text, and changes across different items. No class creation, global cache, view tag, XML/layout or click handler changes.

## Crash guarantee
Do not change `Continue106.card` or its lambda after PATCH289 missing-class crash. The PATCH290 signed DEX lambda guard still runs after signing, plus static checks of horizontal binding count.

## Testing
Run CI (source guards, native helper compilation, whole smali compilation, signed APK DEX checks). Then compare equivalent Home navigation and confirm no crash on device. No merge into main.

Refs: https://developer.android.com/develop/ui/views/text-and-emoji/spans and https://developer.android.com/topic/performance/rendering/optimizing-view-hierarchies .
