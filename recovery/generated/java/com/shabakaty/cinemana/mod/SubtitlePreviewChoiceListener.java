package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.content.DialogInterface;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.downloader.df3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewChoiceListener implements DialogInterface.OnClickListener {
    private final Context context;
    private final CinemanaPlayerControllerView controller;
    private final List list;

    public SubtitlePreviewChoiceListener(Context context, CinemanaPlayerControllerView cinemanaPlayerControllerView, List list) {
        this.context = context;
        this.controller = cinemanaPlayerControllerView;
        this.list = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        List list;
        Object obj;
        Subtitle subtitle;
        String str;
        if (i < 0 || (list = this.list) == null || i >= list.size() || (obj = list.get(i)) == null || (str = (subtitle = (Subtitle) obj).file) == null) {
            return;
        }
        String str2 = subtitle.type;
        Context context = this.context;
        if (context != null) {
            if (str2 != null) {
                df3.a(context).edit().putString("cinemana_preview_subtitle_language", str2).apply();
            }
            if (dialogInterface != null) {
                dialogInterface.dismiss();
            }
            CinemanaPlayerControllerView cinemanaPlayerControllerView = this.controller;
            if (cinemanaPlayerControllerView != null) {
                SubtitlePreviewHelper.startSourcePreview(context, cinemanaPlayerControllerView, str);
            }
        }
    }
}
