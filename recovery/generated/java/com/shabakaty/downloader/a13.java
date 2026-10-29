package com.shabakaty.downloader;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.internal.ResourceProvider;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class a13 extends x0 {
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    public final int O;
    public final int P;
    public final int Q;
    public final int R;
    public final int S;
    public final int T;
    public final int U;
    public final int V;
    public final qt5 W;
    public final List<String> r;
    public final int[] s;
    public final long t;
    public final String u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;
    public static final List<String> X = Arrays.asList(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING);
    public static final int[] Y = {0, 1};
    public static final Parcelable.Creator<a13> CREATOR = new wd7();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public static final class a {
        public static int a(String str) {
            try {
                Map<String, Integer> map = ResourceProvider.a;
                Integer num = (Integer) ResourceProvider.class.getMethod("findResourceByName", String.class).invoke(null, str);
                if (num == null) {
                    return 0;
                }
                return num.intValue();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return 0;
            }
        }
    }

    public a13(List<String> list, int[] iArr, long j, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, IBinder iBinder) {
        qt5 i56Var = null;
        if (list != null) {
            this.r = new ArrayList(list);
        } else {
            this.r = null;
        }
        if (iArr != null) {
            this.s = Arrays.copyOf(iArr, iArr.length);
        } else {
            this.s = null;
        }
        this.t = j;
        this.u = str;
        this.v = i;
        this.w = i2;
        this.x = i3;
        this.y = i4;
        this.z = i5;
        this.A = i6;
        this.B = i7;
        this.C = i8;
        this.D = i9;
        this.E = i10;
        this.F = i11;
        this.G = i12;
        this.H = i13;
        this.I = i14;
        this.J = i15;
        this.K = i16;
        this.L = i17;
        this.M = i18;
        this.N = i19;
        this.O = i20;
        this.P = i21;
        this.Q = i22;
        this.R = i23;
        this.S = i24;
        this.T = i25;
        this.U = i26;
        this.V = i27;
        if (iBinder != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            i56Var = iInterfaceQueryLocalInterface instanceof qt5 ? (qt5) iInterfaceQueryLocalInterface : new i56(iBinder);
        }
        this.W = i56Var;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iN = vw3.n(parcel, 20293);
        vw3.k(parcel, 2, this.r, false);
        int[] iArr = this.s;
        vw3.f(parcel, 3, Arrays.copyOf(iArr, iArr.length), false);
        long j = this.t;
        vw3.o(parcel, 4, 8);
        parcel.writeLong(j);
        vw3.i(parcel, 5, this.u, false);
        int i2 = this.v;
        vw3.o(parcel, 6, 4);
        parcel.writeInt(i2);
        int i3 = this.w;
        vw3.o(parcel, 7, 4);
        parcel.writeInt(i3);
        int i4 = this.x;
        vw3.o(parcel, 8, 4);
        parcel.writeInt(i4);
        int i5 = this.y;
        vw3.o(parcel, 9, 4);
        parcel.writeInt(i5);
        int i6 = this.z;
        vw3.o(parcel, 10, 4);
        parcel.writeInt(i6);
        int i7 = this.A;
        vw3.o(parcel, 11, 4);
        parcel.writeInt(i7);
        int i8 = this.B;
        vw3.o(parcel, 12, 4);
        parcel.writeInt(i8);
        int i9 = this.C;
        vw3.o(parcel, 13, 4);
        parcel.writeInt(i9);
        int i10 = this.D;
        vw3.o(parcel, 14, 4);
        parcel.writeInt(i10);
        int i11 = this.E;
        vw3.o(parcel, 15, 4);
        parcel.writeInt(i11);
        int i12 = this.F;
        vw3.o(parcel, 16, 4);
        parcel.writeInt(i12);
        int i13 = this.G;
        vw3.o(parcel, 17, 4);
        parcel.writeInt(i13);
        int i14 = this.H;
        vw3.o(parcel, 18, 4);
        parcel.writeInt(i14);
        int i15 = this.I;
        vw3.o(parcel, 19, 4);
        parcel.writeInt(i15);
        int i16 = this.J;
        vw3.o(parcel, 20, 4);
        parcel.writeInt(i16);
        int i17 = this.K;
        vw3.o(parcel, 21, 4);
        parcel.writeInt(i17);
        int i18 = this.L;
        vw3.o(parcel, 22, 4);
        parcel.writeInt(i18);
        int i19 = this.M;
        vw3.o(parcel, 23, 4);
        parcel.writeInt(i19);
        int i20 = this.N;
        vw3.o(parcel, 24, 4);
        parcel.writeInt(i20);
        int i21 = this.O;
        vw3.o(parcel, 25, 4);
        parcel.writeInt(i21);
        int i22 = this.P;
        vw3.o(parcel, 26, 4);
        parcel.writeInt(i22);
        int i23 = this.Q;
        vw3.o(parcel, 27, 4);
        parcel.writeInt(i23);
        int i24 = this.R;
        vw3.o(parcel, 28, 4);
        parcel.writeInt(i24);
        int i25 = this.S;
        vw3.o(parcel, 29, 4);
        parcel.writeInt(i25);
        int i26 = this.T;
        vw3.o(parcel, 30, 4);
        parcel.writeInt(i26);
        int i27 = this.U;
        vw3.o(parcel, 31, 4);
        parcel.writeInt(i27);
        int i28 = this.V;
        vw3.o(parcel, 32, 4);
        parcel.writeInt(i28);
        qt5 qt5Var = this.W;
        vw3.e(parcel, 33, qt5Var == null ? null : qt5Var.asBinder(), false);
        vw3.q(parcel, iN);
    }
}
