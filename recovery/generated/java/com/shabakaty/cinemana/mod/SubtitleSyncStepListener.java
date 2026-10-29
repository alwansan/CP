package com.shabakaty.cinemana.mod;

import android.content.Context;
import android.view.View;
import android.widget.EditText;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitleSyncStepListener implements View.OnClickListener {
    private final Context context;
    private final int delta;
    private final EditText editor;

    public SubtitleSyncStepListener(Context context, EditText editText, int i) {
        this.context = context;
        this.editor = editText;
        this.delta = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SubtitleSyncHelper.step(this.context, this.editor, this.delta);
    }
}
