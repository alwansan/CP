package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class vw extends x0 {
    public static final Parcelable.Creator<vw> CREATOR = new d06();
    public String r;
    public final List<String> s;
    public boolean t;
    public if2 u;
    public final boolean v;
    public final uw w;
    public final boolean x;
    public final double y;
    public final boolean z;

    public vw(String str, List<String> list, boolean z, if2 if2Var, boolean z2, uw uwVar, boolean z3, double d, boolean z4) {
        this.r = TextUtils.isEmpty(str) ? BuildConfig.FLAVOR : str;
        int size = list == null ? 0 : list.size();
        ArrayList arrayList = new ArrayList(size);
        this.s = arrayList;
        if (size > 0) {
            arrayList.addAll(list);
        }
        this.t = z;
        this.u = if2Var == null ? new if2() : if2Var;
        this.v = z2;
        this.w = uwVar;
        this.x = z3;
        this.y = d;
        this.z = z4;
    }

    public List<String> W0() {
        return Collections.unmodifiableList(this.s);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iN = vw3.n(parcel, 20293);
        vw3.i(parcel, 2, this.r, false);
        vw3.k(parcel, 3, W0(), false);
        boolean z = this.t;
        vw3.o(parcel, 4, 4);
        parcel.writeInt(z ? 1 : 0);
        vw3.h(parcel, 5, this.u, i, false);
        boolean z2 = this.v;
        vw3.o(parcel, 6, 4);
        parcel.writeInt(z2 ? 1 : 0);
        vw3.h(parcel, 7, this.w, i, false);
        boolean z3 = this.x;
        vw3.o(parcel, 8, 4);
        parcel.writeInt(z3 ? 1 : 0);
        double d = this.y;
        vw3.o(parcel, 9, 8);
        parcel.writeDouble(d);
        boolean z4 = this.z;
        vw3.o(parcel, 10, 4);
        parcel.writeInt(z4 ? 1 : 0);
        vw3.q(parcel, iN);
    }
}
