# Session 23 — CP-DL Bridge Protocol Client
origin=chat; 2026-11-18; branch Html. Added standalone JS transport-independent bridge protocol client and Node tests. Allowlisted actions/events, idempotency keys for destructive commands, sensitive-key and URL/path rejection, payload limit, request correlation/timeouts, sequence gap resync, close pending requests. Not loaded by app.js and not connected to Android. Native exact origin/main-frame validation remains mandatory. CI updated with cache and protocol tests before Chromium.


## CI results
44397753290 SUCCESS: CP_BRIDGE_PROTOCOL_PASS assertions=21; CP_SHELL_BROWSER_PASS assertions=40; artifact 14472026955. Test order fixed (return Home before removing Continue cards); search empty->matching, category filtering, header actions and no-continue hidden validated. No Android bridge/device test.
