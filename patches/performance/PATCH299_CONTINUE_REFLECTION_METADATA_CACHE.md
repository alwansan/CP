# PATCH299 — Cached method metadata in Home card callback

New CL log includes PATCH298: details 1524 frames, 0 >100ms, max 97.33ms, layout max 56.26ms; Home 1035 frames, 28 >100ms, seven >200ms, max 338.4ms. Session contents differ from PATCH296, so cross-build rate deltas are not controlled comparisons. A 254ms main-thread stall was sampled in `Continue106.call → Episodes107.badge → Continue106.paint` at `Class.getDeclaredMethodsUnchecked`.

PATCH299 changes **only** the method-array lookup in `Continue106.call` to `MethodCache299.declaredMethods(Class)`. The helper stores immutable class metadata arrays in a process-local ConcurrentHashMap, with atomic `putIfAbsent`; no Activity/View/context/model/content references are stored directly as keys or values. Existing superclass search, overload and argument checks, accessibility, method invocations and exceptions are retained, and the original `Continue106.card` and every synthetic callback are untouched. Reflection still occurs on first access; this only avoids repeat class scans.

Static guards and signed-APK DEX verification explicitly check the new helper and the original `Continue106$$ExternalSyntheticLambda3`. On device, repeat 8–12 Home↔details journeys and upload logs to CL/log; compare main stalls, Home frame >100ms, layout, holder creation and stability. No merge to main.
