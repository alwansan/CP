package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class if2 extends x0 {
    public static final Parcelable.Creator<if2> CREATOR = new ep5();
    public boolean r;
    public String s;
    public boolean t;
    public sg0 u;

    public if2(boolean z, String str, boolean z2, sg0 sg0Var) {
        this.r = z;
        this.s = str;
        this.t = z2;
        this.u = sg0Var;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof if2)) {
            return false;
        }
        if2 if2Var = (if2) obj;
        return this.r == if2Var.r && yw.e(this.s, if2Var.s) && this.t == if2Var.t && yw.e(this.u, if2Var.u);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.r), this.s, Boolean.valueOf(this.t), this.u});
    }

    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s, androidReceiverCompatible: %b)", Boolean.valueOf(this.r), this.s, Boolean.valueOf(this.t));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iN = vw3.n(parcel, 20293);
        boolean z = this.r;
        vw3.o(parcel, 2, 4);
        parcel.writeInt(z ? 1 : 0);
        vw3.i(parcel, 3, this.s, false);
        boolean z2 = this.t;
        vw3.o(parcel, 4, 4);
        parcel.writeInt(z2 ? 1 : 0);
        vw3.h(parcel, 5, this.u, i, false);
        vw3.q(parcel, iN);
    }

    public if2() {
        Locale locale = Locale.getDefault();
        Pattern pattern = yw.a;
        StringBuilder sb = new StringBuilder(20);
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (!TextUtils.isEmpty(country)) {
            sb.append('-');
            sb.append(country);
        }
        String variant = locale.getVariant();
        if (!TextUtils.isEmpty(variant)) {
            sb.append('-');
            sb.append(variant);
        }
        String string = sb.toString();
        this.r = false;
        this.s = string;
        this.t = false;
        this.u = null;
    }
}
