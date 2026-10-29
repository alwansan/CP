package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.content.DialogInterface;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewChooserClickListener implements DialogInterface.OnClickListener {
    private final Context context;
    private final CinemanaPlayerControllerView controller;

    public SubtitlePreviewChooserClickListener(Context context, CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        this.context = context;
        this.controller = cinemanaPlayerControllerView;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (dialogInterface != null) {
            dialogInterface.dismiss();
        }
        CinemanaPlayerControllerView cinemanaPlayerControllerView = this.controller;
        if (cinemanaPlayerControllerView != null) {
            SubtitlePreviewHelper.showCurrentSubtitleChooser(cinemanaPlayerControllerView);
        }
    }
}
