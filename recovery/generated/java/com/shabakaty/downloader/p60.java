package com.shabakaty.downloader;

import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: CommentApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p60 {

    @c14("nb")
    public int a;

    @c14("commentNb")
    public String b;

    @c14("mitgliedName")
    public String c;

    @c14("imgThumbObjUrl")
    public String d;

    @c14("commentDate")
    public String e;

    @c14("comment")
    public String f;

    @c14("permission")
    public String g;

    public p60() {
        j32.e(BuildConfig.FLAVOR, "commentNb");
        j32.e(BuildConfig.FLAVOR, "userName");
        j32.e(BuildConfig.FLAVOR, "userProfilePic");
        j32.e(BuildConfig.FLAVOR, PListParser.TAG_DATE);
        j32.e(BuildConfig.FLAVOR, "text");
        j32.e(BuildConfig.FLAVOR, "permission");
        this.a = 0;
        this.b = BuildConfig.FLAVOR;
        this.c = BuildConfig.FLAVOR;
        this.d = BuildConfig.FLAVOR;
        this.e = BuildConfig.FLAVOR;
        this.f = BuildConfig.FLAVOR;
        this.g = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p60)) {
            return false;
        }
        p60 p60Var = (p60) obj;
        return this.a == p60Var.a && j32.a(this.b, p60Var.b) && j32.a(this.c, p60Var.c) && j32.a(this.d, p60Var.d) && j32.a(this.e, p60Var.e) && j32.a(this.f, p60Var.f) && j32.a(this.g, p60Var.g);
    }

    public int hashCode() {
        return this.g.hashCode() + ik4.a(this.f, ik4.a(this.e, ik4.a(this.d, ik4.a(this.c, ik4.a(this.b, this.a * 31, 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("CommentApi(videoNb=");
        sbA.append(this.a);
        sbA.append(", commentNb=");
        sbA.append(this.b);
        sbA.append(", userName=");
        sbA.append(this.c);
        sbA.append(", userProfilePic=");
        sbA.append(this.d);
        sbA.append(", date=");
        sbA.append(this.e);
        sbA.append(", text=");
        sbA.append(this.f);
        sbA.append(", permission=");
        return h61.a(sbA, this.g, ')');
    }
}
