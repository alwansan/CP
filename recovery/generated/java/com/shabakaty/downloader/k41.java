package com.shabakaty.downloader;

/* JADX INFO: compiled from: EpomParameters.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k41 {
    public final ny2.b a;
    public final ny2.a b;
    public final boolean c;

    public k41(ny2.b bVar, ny2.a aVar, boolean z) {
        j32.e(bVar, "links");
        j32.e(aVar, "durations");
        this.a = bVar;
        this.b = aVar;
        this.c = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k41)) {
            return false;
        }
        k41 k41Var = (k41) obj;
        return j32.a(this.a, k41Var.a) && j32.a(this.b, k41Var.b) && this.c == k41Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    public int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        boolean z = this.c;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return iHashCode + r0;
    }

    public String toString() {
        StringBuilder sbA = um3.a("EpomParameters(links=");
        sbA.append(this.a);
        sbA.append(", durations=");
        sbA.append(this.b);
        sbA.append(", logEvents=");
        return xh2.a(sbA, this.c, ')');
    }
}
