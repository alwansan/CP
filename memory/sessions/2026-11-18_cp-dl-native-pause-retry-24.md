# Session 24 — Native Download Pause/Retry Trace
origin=chat; 2026-11-18; branch Html. Further static trace established ey0.d(taskId) as pause through Restart108.paused -> Queue110.pause -> FileDownloader.pause; ey0.i(taskId) is retry after ExpiredLink269 and DAO reconstruction; DownloaderService yy0 auto-retry gates through Restart108.canRetry, which blocks PAUSE intent/Queue110.isPaused and requires DAO row/no delete intent. Restart108.attach -> wake scan. No ResumeDownloadBR in manifest. Dependencies112/Inputs114 has subtitle-specific resume only. Generic video resume/unpause UI caller remains unresolved. See docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md. No runtime changes.


## Resume candidate discovered
Queue110.isPaused reads PAUSE intent; Queue110.remember writes RUN/NATIVE_ADMITTED. Restart108.admitted writes external|RUN and Queue110.remember. ey0.l(manager,id) rebuilds composer and q(reuse=true) -> dlStart -> admitted. This is a strong re-admit candidate but its UI caller remains unconfirmed; do not expose as resume API until traced and tested.
