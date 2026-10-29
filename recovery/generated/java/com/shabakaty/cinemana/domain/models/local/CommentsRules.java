package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: CommentsRulesLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "commentRulesHead", "Ljava/lang/String;", "getCommentRulesHead", "()Ljava/lang/String;", "setCommentRulesHead", "(Ljava/lang/String;)V", BuildConfig.FLAVOR, "commentRules", "Ljava/util/List;", "getCommentRules", "()Ljava/util/List;", "setCommentRules", "(Ljava/util/List;)V", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class CommentsRules implements Parcelable {
    public static final Parcelable.Creator<CommentsRules> CREATOR = new a();
    public List<String> commentRules;
    public String commentRulesHead;

    /* JADX INFO: compiled from: CommentsRulesLocal.kt */
    public static final class a implements Parcelable.Creator<CommentsRules> {
        @Override // android.os.Parcelable.Creator
        public CommentsRules createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new CommentsRules(parcel.readString(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        public CommentsRules[] newArray(int i) {
            return new CommentsRules[i];
        }
    }

    public CommentsRules(String str, List<String> list) {
        j32.e(str, "commentRulesHead");
        j32.e(list, "commentRules");
        this.commentRulesHead = str;
        this.commentRules = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommentsRules)) {
            return false;
        }
        CommentsRules commentsRules = (CommentsRules) obj;
        return j32.a(this.commentRulesHead, commentsRules.commentRulesHead) && j32.a(this.commentRules, commentsRules.commentRules);
    }

    public int hashCode() {
        return this.commentRules.hashCode() + (this.commentRulesHead.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("CommentsRules(commentRulesHead=");
        sbA.append(this.commentRulesHead);
        sbA.append(", commentRules=");
        sbA.append(this.commentRules);
        sbA.append(')');
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.commentRulesHead);
        parcel.writeStringList(this.commentRules);
    }

    public CommentsRules() {
        ArrayList arrayList = new ArrayList();
        j32.e(BuildConfig.FLAVOR, "commentRulesHead");
        j32.e(arrayList, "commentRules");
        this.commentRulesHead = BuildConfig.FLAVOR;
        this.commentRules = arrayList;
    }
}
