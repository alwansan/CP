package com.shabakaty.cinemana.ca1;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class Bulk102 implements View.OnClickListener {
    private final boolean all;
    private final Download94.State state;

    public Bulk102(Download94.State state, boolean z) {
        this.state = state;
        this.all = z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Download94.State state = this.state;
        if (state.pending) {
            return;
        }
        if (this.all) {
            state.selectAll102(view);
        } else {
            state.selected.clear();
            state.update();
        }
    }
}
