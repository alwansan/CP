package com.shabakaty.downloader;

/* JADX INFO: compiled from: Status.kt */
/* JADX INFO: loaded from: classes.dex */
public enum xc4 {
    PENDING(1),
    STARTED(6),
    PROGRESS(3),
    RETRY(5),
    ERROR(-1),
    PAUSED(-2),
    COMPLETED(-3),
    WARN(-4),
    UNKNOWN(-5);

    public final int r;

    xc4(int i) {
        this.r = i;
    }
}
