# PATCH310 — Keep the work-details screen when exiting the player

## User requirement
When the player is open, **do not kill or reset the underlying work-details screen** simply to reduce memory use. Exiting the player must return to the same work's details, not reset to the home tab. Optimizations should suspend unnecessary background UI work instead of destroying the navigation state.

## Source audit
- `d15.smali` opens `VideoPlayerActivity` from a details fragment using `Fragment.startActivity` or `startActivityForResult`, normally leaving that fragment in the same task behind the player.
- `VideoPlayerActivity.onBackPressed` delegates back to Android after playback cleanup; it does not request HomeActivity explicitly.
- `hx2.smali` is the HomeActivity base. Its `onCreate(Bundle)` **unconditionally** detached all support fragments, cleared the fragment list and selected Home. A non-null Android saved-instance-state Bundle signals a restoration in which this destructive code could discard the details NavHost/back stack. This is a strongly plausible restoration bug, not a proven explanation for all user reports.
- The old code's cold-start initialization remains untouched for `savedInstanceState == null`. The change is limited to the restore path and navigation instrumentation; no work-detail instance is explicitly destroyed when entering the player.
- The manifest's launch flags and the Player activity/fragment implementation are left untouched. A normal player Back should use the existing Android activity stack.

## Change
`hx2.onCreate` now saves the Bundle reference before calling its superclass, and if non-null **skips the destructive detach/list-clear/default Home selection**, continuing to install the existing selected/reselected bottom-tab listeners. The code logs one `home_saved_backstack_preserved` event via the already asynchronous `LoadDiag307.note` writer. No extras/URLs/titles/IDs are stored, no synchronous file write on UI thread.

## Device verification
1. Install PATCH310 without clearing app data.
2. Open a work's details, select an episode, enter player, then use player Back. Verify return to **same details and scroll/selection**.
3. Repeat after screen lock/unlock, portrait/landscape transitions, Android background/foreground, and while system pressure is higher. The critical save/restore path requires that Android recreates HomeActivity with a saved state and may not trigger in a normal Back test.
4. Look for `home_saved_backstack_preserved` in `Cinemana/work/log/load_diagnostics.main.jsonl` and existing `ui_performance.jsonl`; correlate with LogFox/Logcat if it returns Home incorrectly. Upload to `alwansan/CL/log`.
5. Never clear the download folder or account data for testing.

## Limits
Preserving the back stack on a saved-state recreation does not guarantee restoration after arbitrary OS process death without saved state, task relaunch with CLEAR_TASK flags, explicit activity finish, or external intents. Further work should be based on a reproducible navigation trace; do not introduce a new player redirect to Home or a global static Activity reference, as these create lifecycle leaks and may break task/back behavior.

No download, recovery, MKV export, notification or media playback logic was modified.
