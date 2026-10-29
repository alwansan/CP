package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitleSyncDoneListener implements DialogInterface.OnClickListener {
    private final Context context;
    private final EditText editor;

    public SubtitleSyncDoneListener(Context context, EditText editText) {
        this.context = context;
        this.editor = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        SubtitleSyncHelper.commitText(this.context, this.editor);
    }
}
