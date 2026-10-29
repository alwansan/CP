package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import kotlin.Metadata;

/* JADX INFO: compiled from: AvailableYearsLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/AvailableYears;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "caption", "Ljava/lang/String;", "getCaption", "()Ljava/lang/String;", "setCaption", "(Ljava/lang/String;)V", "value", "getValue", "setValue", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class AvailableYears implements Parcelable {
    public static final Parcelable.Creator<AvailableYears> CREATOR = new a();
    public String caption;
    public String value;

    /* JADX INFO: compiled from: AvailableYearsLocal.kt */
    public static final class a implements Parcelable.Creator<AvailableYears> {
        @Override // android.os.Parcelable.Creator
        public AvailableYears createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new AvailableYears(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public AvailableYears[] newArray(int i) {
            return new AvailableYears[i];
        }
    }

    public AvailableYears() {
        j32.e(BuildConfig.FLAVOR, "caption");
        j32.e(BuildConfig.FLAVOR, "value");
        this.caption = BuildConfig.FLAVOR;
        this.value = BuildConfig.FLAVOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvailableYears)) {
            return false;
        }
        AvailableYears availableYears = (AvailableYears) obj;
        return j32.a(this.caption, availableYears.caption) && j32.a(this.value, availableYears.value);
    }

    public int hashCode() {
        return this.value.hashCode() + (this.caption.hashCode() * 31);
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public String getCaption() {
        return this.caption;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.caption);
        parcel.writeString(this.value);
    }

    public AvailableYears(String str, String str2) {
        j32.e(str, "caption");
        j32.e(str2, "value");
        this.caption = str;
        this.value = str2;
    }
}
