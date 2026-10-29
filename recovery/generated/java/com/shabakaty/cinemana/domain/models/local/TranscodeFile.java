package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: TranscodeFileLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "resolution", "getResolution", "setResolution", "container", "getContainer", "setContainer", "transcoddedFileName", "getTranscoddedFileName", "setTranscoddedFileName", "videoUrl", "getVideoUrl", "setVideoUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class TranscodeFile implements Parcelable {
    public static final Parcelable.Creator<TranscodeFile> CREATOR = new a();
    public String container;
    public String name;
    public String resolution;
    public String transcoddedFileName;
    public String videoUrl;

    /* JADX INFO: compiled from: TranscodeFileLocal.kt */
    public static final class a implements Parcelable.Creator<TranscodeFile> {
        @Override // android.os.Parcelable.Creator
        public TranscodeFile createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new TranscodeFile(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public TranscodeFile[] newArray(int i) {
            return new TranscodeFile[i];
        }
    }

    public TranscodeFile(String str, String str2, String str3, String str4, String str5) {
        j32.e(str, "name");
        j32.e(str2, "resolution");
        j32.e(str3, "container");
        j32.e(str4, "transcoddedFileName");
        j32.e(str5, "videoUrl");
        this.name = str;
        this.resolution = str2;
        this.container = str3;
        this.transcoddedFileName = str4;
        this.videoUrl = str5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TranscodeFile)) {
            return false;
        }
        TranscodeFile transcodeFile = (TranscodeFile) obj;
        return j32.a(this.name, transcodeFile.name) && j32.a(this.resolution, transcodeFile.resolution) && j32.a(this.container, transcodeFile.container) && j32.a(this.transcoddedFileName, transcodeFile.transcoddedFileName) && j32.a(this.videoUrl, transcodeFile.videoUrl);
    }

    public int hashCode() {
        return this.videoUrl.hashCode() + ik4.a(this.transcoddedFileName, ik4.a(this.container, ik4.a(this.resolution, this.name.hashCode() * 31, 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("TranscodeFile(name=");
        sbA.append(this.name);
        sbA.append(", resolution=");
        sbA.append(this.resolution);
        sbA.append(", container=");
        sbA.append(this.container);
        sbA.append(", transcoddedFileName=");
        sbA.append(this.transcoddedFileName);
        sbA.append(", videoUrl=");
        return h61.a(sbA, this.videoUrl, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.name);
        parcel.writeString(this.resolution);
        parcel.writeString(this.container);
        parcel.writeString(this.transcoddedFileName);
        parcel.writeString(this.videoUrl);
    }

    public TranscodeFile() {
        this(BuildConfig.FLAVOR, "240p", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
