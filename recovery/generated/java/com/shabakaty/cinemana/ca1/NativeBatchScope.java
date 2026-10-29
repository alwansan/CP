package com.shabakaty.cinemana.ca1;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;

/* JADX INFO: loaded from: classes6.dex */
public final class NativeBatchScope extends DownloadActionsHandlerScope {
    public NativeBatchScope(VideoModel videoModel, Fragment fragment) {
        super(videoModel, fragment);
    }

    @Override // com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope
    public Context f() {
        Fragment fragment = this.s;
        if (fragment != null) {
            return fragment.getContext();
        }
        return null;
    }
}
