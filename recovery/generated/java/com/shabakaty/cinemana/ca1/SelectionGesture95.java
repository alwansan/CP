package com.shabakaty.cinemana.ca1;

/* JADX INFO: loaded from: classes6.dex */
public final class SelectionGesture95 {
    public static final long HOLD_MS = 1000;
    private boolean active;
    private boolean moved;
    private float slop;
    private long started;
    private float x;
    private float y;

    public void down(float f, float f2, long j, float f3) {
        this.x = f;
        this.y = f2;
        this.started = j;
        this.slop = f3;
        this.active = true;
        this.moved = false;
    }

    public void move(float f, float f2) {
        if (Math.abs(f - this.x) > this.slop || Math.abs(f2 - this.y) > this.slop) {
            this.moved = true;
        }
    }

    public void cancel() {
        this.active = false;
        this.moved = true;
    }

    public boolean ready(long j) {
        return this.active && !this.moved && j - this.started >= 1000;
    }

    public boolean tap() {
        return this.active && !this.moved;
    }
}
