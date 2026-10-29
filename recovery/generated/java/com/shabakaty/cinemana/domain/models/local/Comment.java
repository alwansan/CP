package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: CommentLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u001b\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/Comment;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "videoNb", "Ljava/lang/String;", "getVideoNb", "()Ljava/lang/String;", "setVideoNb", "(Ljava/lang/String;)V", "commentNb", "getCommentNb", "setCommentNb", "userName", "getUserName", "setUserName", "userProfilePic", "getUserProfilePic", "setUserProfilePic", PListParser.TAG_DATE, "getDate", "setDate", "text", "getText", "setText", "permission", "getPermission", "setPermission", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class Comment implements Parcelable {
    public static final Parcelable.Creator<Comment> CREATOR = new a();
    public String commentNb;
    public String date;
    public String permission;
    public String text;
    public String userName;
    public String userProfilePic;
    public String videoNb;

    /* JADX INFO: compiled from: CommentLocal.kt */
    public static final class a implements Parcelable.Creator<Comment> {
        @Override // android.os.Parcelable.Creator
        public Comment createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new Comment(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Comment[] newArray(int i) {
            return new Comment[i];
        }
    }

    public Comment(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        j32.e(str, "videoNb");
        j32.e(str2, "commentNb");
        j32.e(str3, "userName");
        j32.e(str4, "userProfilePic");
        j32.e(str5, PListParser.TAG_DATE);
        j32.e(str6, "text");
        j32.e(str7, "permission");
        this.videoNb = str;
        this.commentNb = str2;
        this.userName = str3;
        this.userProfilePic = str4;
        this.date = str5;
        this.text = str6;
        this.permission = str7;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Comment)) {
            return false;
        }
        Comment comment = (Comment) obj;
        return j32.a(this.videoNb, comment.videoNb) && j32.a(this.commentNb, comment.commentNb) && j32.a(this.userName, comment.userName) && j32.a(this.userProfilePic, comment.userProfilePic) && j32.a(this.date, comment.date) && j32.a(this.text, comment.text) && j32.a(this.permission, comment.permission);
    }

    public int hashCode() {
        return this.permission.hashCode() + ik4.a(this.text, ik4.a(this.date, ik4.a(this.userProfilePic, ik4.a(this.userName, ik4.a(this.commentNb, this.videoNb.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("Comment(videoNb=");
        sbA.append(this.videoNb);
        sbA.append(", commentNb=");
        sbA.append(this.commentNb);
        sbA.append(", userName=");
        sbA.append(this.userName);
        sbA.append(", userProfilePic=");
        sbA.append(this.userProfilePic);
        sbA.append(", date=");
        sbA.append(this.date);
        sbA.append(", text=");
        sbA.append(this.text);
        sbA.append(", permission=");
        return h61.a(sbA, this.permission, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.videoNb);
        parcel.writeString(this.commentNb);
        parcel.writeString(this.userName);
        parcel.writeString(this.userProfilePic);
        parcel.writeString(this.date);
        parcel.writeString(this.text);
        parcel.writeString(this.permission);
    }

    public Comment() {
        this("0", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
