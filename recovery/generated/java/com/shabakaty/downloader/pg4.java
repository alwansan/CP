package com.shabakaty.downloader;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class pg4 {
    public final int a;
    public final int b;
    public final int c;
    public final fg4 d;
    public final hg4 e;
    public final gg4 f;

    public pg4() {
        this(0, 0, 0, null, null, null, 63);
    }

    public pg4(int i, int i2, int i3, fg4 fg4Var, hg4 hg4Var, gg4 gg4Var) {
        j32.e(fg4Var, "subtitleEdge");
        j32.e(hg4Var, "subtitleFontScale");
        j32.e(gg4Var, "subtitleFontFamily");
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = fg4Var;
        this.e = hg4Var;
        this.f = gg4Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pg4)) {
            return false;
        }
        pg4 pg4Var = (pg4) obj;
        return this.a == pg4Var.a && this.b == pg4Var.b && this.c == pg4Var.c && j32.a(this.d, pg4Var.d) && j32.a(this.e, pg4Var.e) && j32.a(this.f, pg4Var.f);
    }

    public int hashCode() {
        return this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + (((((this.a * 31) + this.b) * 31) + this.c) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SubtitlesSettingsEntity(subtitleColor=");
        sbA.append(this.a);
        sbA.append(", subtitleEdgeColor=");
        sbA.append(this.b);
        sbA.append(", subtitleBackgroundColor=");
        sbA.append(this.c);
        sbA.append(", subtitleEdge=");
        sbA.append(this.d);
        sbA.append(", subtitleFontScale=");
        sbA.append(this.e);
        sbA.append(", subtitleFontFamily=");
        sbA.append(this.f);
        sbA.append(')');
        return sbA.toString();
    }

    public pg4(int i, int i2, int i3, fg4 fg4Var, hg4 hg4Var, gg4 gg4Var, int i4) {
        this((i4 & 1) != 0 ? -1 : i, (i4 & 2) != 0 ? y24.a : i2, (i4 & 4) != 0 ? 0 : i3, (i4 & 8) != 0 ? fg4.b.c : null, (i4 & 16) != 0 ? hg4.e.c : null, (i4 & 32) != 0 ? gg4.c.e : null);
    }
}
