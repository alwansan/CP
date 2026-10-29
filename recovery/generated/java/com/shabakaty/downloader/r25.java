package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: VideoStatusApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r25 {

    @c14("like")
    public boolean a;

    @c14("watched")
    public boolean b;

    @c14("annoying")
    public boolean c;

    @c14("dislike")
    public boolean d;

    @c14("favorit")
    public boolean e;

    @c14("watchLater")
    public String f;

    public r25() {
        j32.e(BuildConfig.FLAVOR, "watchLater");
        this.a = false;
        this.b = false;
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r25)) {
            return false;
        }
        r25 r25Var = (r25) obj;
        return this.a == r25Var.a && this.b == r25Var.b && this.c == r25Var.c && this.d == r25Var.d && this.e == r25Var.e && j32.a(this.f, r25Var.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.b;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.c;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int i3 = (i2 + r3) * 31;
        boolean z4 = this.d;
        ?? r4 = z4;
        if (z4) {
            r4 = 1;
        }
        int i4 = (i3 + r4) * 31;
        boolean z5 = this.e;
        return this.f.hashCode() + ((i4 + (z5 ? 1 : z5)) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideoStatusApi(liked=");
        sbA.append(this.a);
        sbA.append(", watched=");
        sbA.append(this.b);
        sbA.append(", annoying=");
        sbA.append(this.c);
        sbA.append(", disLiked=");
        sbA.append(this.d);
        sbA.append(", favorite=");
        sbA.append(this.e);
        sbA.append(", watchLater=");
        return h61.a(sbA, this.f, ')');
    }
}
