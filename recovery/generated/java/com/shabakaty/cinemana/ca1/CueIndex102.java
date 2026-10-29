package com.shabakaty.cinemana.ca1;

/* JADX INFO: loaded from: classes6.dex */
public final class CueIndex102 {
    public int kept;
    public int seen;
    public final int videoTrack;
    public long timeUs = -1;
    public long position = -1;
    private int track = -1;
    private long trackPosition = -1;

    public CueIndex102(int i) {
        this.videoTrack = i;
    }

    public void start(int i) {
        if (i == 187) {
            this.timeUs = -1L;
            this.position = -1L;
        }
        if (i == 183) {
            this.track = -1;
            this.trackPosition = -1L;
        }
    }

    public void integer(int i, long j) {
        if (i == 179) {
            this.timeUs = j;
        }
        if (i == 247) {
            this.track = (int) j;
        }
        if (i == 241) {
            this.trackPosition = j;
        }
    }

    public boolean end(int i) {
        if (i == 183 && this.track == this.videoTrack && this.position < 0) {
            this.position = this.trackPosition;
        }
        boolean z = false;
        if (i != 187) {
            return false;
        }
        this.seen++;
        if (this.timeUs >= 0 && this.position >= 0) {
            z = true;
        }
        if (z) {
            this.kept++;
        }
        return z;
    }
}
