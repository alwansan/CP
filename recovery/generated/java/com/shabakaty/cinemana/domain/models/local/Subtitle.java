package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoModelLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/Subtitle;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", "type", "getType", "setType", "extention", "getExtention", "setExtention", "file", "getFile", "setFile", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class Subtitle implements Parcelable {
    public static final Parcelable.Creator<Subtitle> CREATOR = new a();
    public String extention;
    public String file;
    public String id;
    public String name;
    public String type;

    /* JADX INFO: compiled from: VideoModelLocal.kt */
    public static final class a implements Parcelable.Creator<Subtitle> {
        @Override // android.os.Parcelable.Creator
        public Subtitle createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new Subtitle(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Subtitle[] newArray(int i) {
            return new Subtitle[i];
        }
    }

    public Subtitle(String str, String str2, String str3, String str4, String str5) {
        j32.e(str, "id");
        j32.e(str2, "name");
        j32.e(str3, "type");
        j32.e(str4, "extention");
        j32.e(str5, "file");
        this.id = str;
        this.name = str2;
        this.type = str3;
        this.extention = str4;
        this.file = str5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Subtitle) {
            return j32.a(((Subtitle) obj).type, this.type);
        }
        return false;
    }

    public int hashCode() {
        return this.file.hashCode() + ik4.a(this.extention, ik4.a(this.type, ik4.a(this.name, this.id.hashCode() * 31, 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("Subtitle(id=");
        sbA.append(this.id);
        sbA.append(", name=");
        sbA.append(this.name);
        sbA.append(", type=");
        sbA.append(this.type);
        sbA.append(", extention=");
        sbA.append(this.extention);
        sbA.append(", file=");
        return h61.a(sbA, this.file, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.type);
        parcel.writeString(this.extention);
        parcel.writeString(this.file);
    }

    public Subtitle() {
        this("0", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
