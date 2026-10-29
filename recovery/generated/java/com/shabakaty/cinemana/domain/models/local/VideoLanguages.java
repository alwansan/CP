package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoModelLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "enTitle", "Ljava/lang/String;", "getEnTitle", "()Ljava/lang/String;", "setEnTitle", "(Ljava/lang/String;)V", "arTitle", "getArTitle", "setArTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class VideoLanguages implements Parcelable {
    public static final Parcelable.Creator<VideoLanguages> CREATOR = new a();
    public String arTitle;
    public String enTitle;

    /* JADX INFO: compiled from: VideoModelLocal.kt */
    public static final class a implements Parcelable.Creator<VideoLanguages> {
        @Override // android.os.Parcelable.Creator
        public VideoLanguages createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new VideoLanguages(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public VideoLanguages[] newArray(int i) {
            return new VideoLanguages[i];
        }
    }

    public VideoLanguages() {
        this(null, null, 3);
    }

    public VideoLanguages(String str, String str2, int i) {
        String str3 = (i & 1) != 0 ? BuildConfig.FLAVOR : null;
        String str4 = (i & 2) != 0 ? BuildConfig.FLAVOR : null;
        j32.e(str3, "enTitle");
        j32.e(str4, "arTitle");
        this.enTitle = str3;
        this.arTitle = str4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoLanguages)) {
            return false;
        }
        VideoLanguages videoLanguages = (VideoLanguages) obj;
        return j32.a(this.enTitle, videoLanguages.enTitle) && j32.a(this.arTitle, videoLanguages.arTitle);
    }

    public int hashCode() {
        return this.arTitle.hashCode() + (this.enTitle.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideoLanguages(enTitle=");
        sbA.append(this.enTitle);
        sbA.append(", arTitle=");
        return h61.a(sbA, this.arTitle, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.enTitle);
        parcel.writeString(this.arTitle);
    }

    public VideoLanguages(String str, String str2) {
        j32.e(str, "enTitle");
        j32.e(str2, "arTitle");
        this.enTitle = str;
        this.arTitle = str2;
    }
}
