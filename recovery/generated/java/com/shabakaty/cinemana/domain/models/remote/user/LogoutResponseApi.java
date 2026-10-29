package com.shabakaty.cinemana.domain.models.remote.user;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: LogoutResponseApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, FileDownloadModel.STATUS, "Ljava/lang/String;", "getStatus", "()Ljava/lang/String;", "setStatus", "(Ljava/lang/String;)V", "likeNumber", "getLikeNumber", "setLikeNumber", "dislikeNumber", "getDislikeNumber", "setDislikeNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class LogoutResponseApi implements Parcelable {
    public static final Parcelable.Creator<LogoutResponseApi> CREATOR = new a();

    @c14("dislikeNumebr")
    public String dislikeNumber;

    @c14("likeNumber")
    public String likeNumber;

    @c14(FileDownloadModel.STATUS)
    public String status;

    /* JADX INFO: compiled from: LogoutResponseApi.kt */
    public static final class a implements Parcelable.Creator<LogoutResponseApi> {
        @Override // android.os.Parcelable.Creator
        public LogoutResponseApi createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new LogoutResponseApi(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public LogoutResponseApi[] newArray(int i) {
            return new LogoutResponseApi[i];
        }
    }

    public LogoutResponseApi(String str, String str2, String str3) {
        j32.e(str, FileDownloadModel.STATUS);
        j32.e(str2, "likeNumber");
        j32.e(str3, "dislikeNumber");
        this.status = str;
        this.likeNumber = str2;
        this.dislikeNumber = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogoutResponseApi)) {
            return false;
        }
        LogoutResponseApi logoutResponseApi = (LogoutResponseApi) obj;
        return j32.a(this.status, logoutResponseApi.status) && j32.a(this.likeNumber, logoutResponseApi.likeNumber) && j32.a(this.dislikeNumber, logoutResponseApi.dislikeNumber);
    }

    public int hashCode() {
        return this.dislikeNumber.hashCode() + ik4.a(this.likeNumber, this.status.hashCode() * 31, 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("LogoutResponseApi(status=");
        sbA.append(this.status);
        sbA.append(", likeNumber=");
        sbA.append(this.likeNumber);
        sbA.append(", dislikeNumber=");
        return h61.a(sbA, this.dislikeNumber, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.status);
        parcel.writeString(this.likeNumber);
        parcel.writeString(this.dislikeNumber);
    }

    public LogoutResponseApi() {
        this(BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
