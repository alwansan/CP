package com.shabakaty.cinemana.data.db.downloads;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0015\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010 R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\bR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0004\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\b¨\u0006!"}, d2 = {"Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "parentId", "getParentId", "setParentId", BuildConfig.FLAVOR, "downloadTaskId", "I", "getDownloadTaskId", "()I", "setDownloadTaskId", "(I)V", "name", "getName", "setName", "type", "getType", "setType", "extension", "getExtension", "setExtension", "file", "getFile", "setFile", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class SubtitleDb implements Parcelable {
    public static final Parcelable.Creator<SubtitleDb> CREATOR = new a();
    public int downloadTaskId;
    public String extension;
    public String file;
    public String id;
    public String name;
    public String parentId;
    public String type;

    /* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
    public static final class a implements Parcelable.Creator<SubtitleDb> {
        @Override // android.os.Parcelable.Creator
        public SubtitleDb createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new SubtitleDb(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public SubtitleDb[] newArray(int i) {
            return new SubtitleDb[i];
        }
    }

    public SubtitleDb(String str, String str2, int i, String str3, String str4, String str5, String str6) {
        j32.e(str, "id");
        j32.e(str2, "parentId");
        j32.e(str3, "name");
        j32.e(str4, "type");
        j32.e(str5, "extension");
        j32.e(str6, "file");
        this.id = str;
        this.parentId = str2;
        this.downloadTaskId = i;
        this.name = str3;
        this.type = str4;
        this.extension = str5;
        this.file = str6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubtitleDb)) {
            return false;
        }
        SubtitleDb subtitleDb = (SubtitleDb) obj;
        return j32.a(this.id, subtitleDb.id) && j32.a(this.parentId, subtitleDb.parentId) && this.downloadTaskId == subtitleDb.downloadTaskId && j32.a(this.name, subtitleDb.name) && j32.a(this.type, subtitleDb.type) && j32.a(this.extension, subtitleDb.extension) && j32.a(this.file, subtitleDb.file);
    }

    public int hashCode() {
        return this.file.hashCode() + ik4.a(this.extension, ik4.a(this.type, ik4.a(this.name, (ik4.a(this.parentId, this.id.hashCode() * 31, 31) + this.downloadTaskId) * 31, 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SubtitleDb(id=");
        sbA.append(this.id);
        sbA.append(", parentId=");
        sbA.append(this.parentId);
        sbA.append(", downloadTaskId=");
        sbA.append(this.downloadTaskId);
        sbA.append(", name=");
        sbA.append(this.name);
        sbA.append(", type=");
        sbA.append(this.type);
        sbA.append(", extension=");
        sbA.append(this.extension);
        sbA.append(", file=");
        return h61.a(sbA, this.file, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.id);
        parcel.writeString(this.parentId);
        parcel.writeInt(this.downloadTaskId);
        parcel.writeString(this.name);
        parcel.writeString(this.type);
        parcel.writeString(this.extension);
        parcel.writeString(this.file);
    }

    public SubtitleDb() {
        this("0", "0", -2, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
