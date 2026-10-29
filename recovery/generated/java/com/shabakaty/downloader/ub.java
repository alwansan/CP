package com.shabakaty.downloader;

import android.util.Log;

/* JADX INFO: compiled from: AppUpdater.java */
/* JADX INFO: loaded from: classes.dex */
public class ub implements vw1 {
    public final /* synthetic */ vb a;

    public ub(vb vbVar) {
        this.a = vbVar;
    }

    public void a(int i) {
        if (i == 1) {
            Log.e("AppUpdater", "UpdateFrom.GOOGLE_PLAY isn't valid: update varies by device.");
        } else {
            if (i == 2) {
                throw new IllegalArgumentException("GitHub user or repo is empty!");
            }
            if (i == 4) {
                throw new IllegalArgumentException("XML file is not valid!");
            }
            if (i == 6) {
                throw new IllegalArgumentException("JSON file is not valid!");
            }
        }
    }
}
