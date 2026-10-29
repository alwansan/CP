package com.shabakaty.downloader;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class uw extends x0 {
    public final String r;
    public final String s;
    public final lm5 t;
    public final a13 u;
    public final boolean v;
    public final boolean w;
    public static final pk2 x = new pk2("CastMediaOptions");
    public static final Parcelable.Creator<uw> CREATOR = new be5();

    public uw(String str, String str2, IBinder iBinder, a13 a13Var, boolean z, boolean z2) {
        lm5 e06Var;
        this.r = str;
        this.s = str2;
        if (iBinder == null) {
            e06Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            e06Var = iInterfaceQueryLocalInterface instanceof lm5 ? (lm5) iInterfaceQueryLocalInterface : new e06(iBinder);
        }
        this.t = e06Var;
        this.u = a13Var;
        this.v = z;
        this.w = z2;
    }

    public ez1 W0() {
        lm5 lm5Var = this.t;
        if (lm5Var == null) {
            return null;
        }
        try {
            return (ez1) p43.h2(lm5Var.H());
        } catch (RemoteException e) {
            x.b(e, "Unable to call %s on %s.", "getWrappedClientObject", lm5.class.getSimpleName());
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iN = vw3.n(parcel, 20293);
        vw3.i(parcel, 2, this.r, false);
        vw3.i(parcel, 3, this.s, false);
        lm5 lm5Var = this.t;
        vw3.e(parcel, 4, lm5Var == null ? null : lm5Var.asBinder(), false);
        vw3.h(parcel, 5, this.u, i, false);
        boolean z = this.v;
        vw3.o(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.w;
        vw3.o(parcel, 7, 4);
        parcel.writeInt(z2 ? 1 : 0);
        vw3.q(parcel, iN);
    }
}
