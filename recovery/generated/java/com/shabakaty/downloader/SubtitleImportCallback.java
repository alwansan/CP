package com.shabakaty.downloader;

import android.net.Uri;
import com.shabakaty.cinemana.features.SequentialSubtitleManager;
import com.shabakaty.cinemana.player.PlayerDiagnosticLog;
import com.shabakaty.cinemana.player.VideoPlayerActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class SubtitleImportCallback implements n3 {
    private final VideoPlayerActivity a;

    public SubtitleImportCallback(VideoPlayerActivity videoPlayerActivity) {
        this.a = videoPlayerActivity;
    }

    @Override // com.shabakaty.downloader.n3
    public final void a(Object obj) {
        VideoPlayerActivity videoPlayerActivity;
        Uri uriA;
        PlayerDiagnosticLog.event("subtitle_picker_callback");
        Uri uri = (Uri) obj;
        if (uri == null || (uriA = SubtitleImportFile.a((videoPlayerActivity = this.a), uri)) == null) {
            return;
        }
        PlayerDiagnosticLog.event("subtitle_file_normalized");
        new cu(videoPlayerActivity).a(uriA);
        SequentialSubtitleManager.onManualImport(videoPlayerActivity);
        PlayerDiagnosticLog.event("subtitle_manual_import_dispatched");
    }
}
