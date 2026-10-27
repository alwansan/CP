# PATCH264: Continue Watching spacing and persistent trash action

Resume subtitles match `   S01 E06 • 0:00/23:24   `: three ASCII spaces at both ends, a bullet between episode and time, and no spaces around the duration slash. Empty metadata remains empty.

The More-page trash action previously lived in the shared options menu. It now uses a page-owned ImageButton in the actual toolbar (the native toolbar resource ID is preferred). The toolbar layout uses absolute left gravity, independent of RTL text direction. Fragment onPause/onResume hide and restore the action; onDestroyView removes it. The fallback inside the page still reserves its own space when no toolbar exists. Existing selection and history-only deletion are unchanged.

Validation: 33 host assertions, recovery linkage/access checks, three negative reference guards, five recovery flow tests. APK assembly and signing are checked by the release workflow. Device layout/gesture verification is still required.

## CL audit

Reviewed CL commit 04112c3, covering ca1_batch entries from 2026-10-28 00:25:29 to 00:45:05 Baghdad time. No recorded kw0/lz0 deletion failure or More refresh exception appears in this captured window. Two subtitle completion receipt identity/length rejections were followed by DB_COMMIT_ACKNOWLEDGED for both task IDs (1634230791 and -1687183725); the validation guard was preserved. Two interrupted HTTP size lookups and two episode context timeouts also appear. Four WAIT_ITEM_MAPPING ledger rows remain. The uploaded tree.txt is older than the latest diagnostic window, so it cannot establish whether those rows correspond to currently stranded files. No unsafe cleanup or weakened media verification was introduced to hide these diagnostics.
