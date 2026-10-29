package com.shabakaty.cinemana.ui.profile_fragment;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: ProfileViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/shabakaty/cinemana/ui/profile_fragment/UserViewInfo;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "firstName", "Ljava/lang/String;", "getFirstName", "()Ljava/lang/String;", "lastName", "getLastName", "smallPicture", "getSmallPicture", "largePicture", "getLargePicture", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class UserViewInfo {
    public final String firstName;
    public final String largePicture;
    public final String lastName;
    public final String smallPicture;

    public UserViewInfo(String str, String str2, String str3, String str4) {
        this.firstName = str;
        this.lastName = str2;
        this.smallPicture = str3;
        this.largePicture = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserViewInfo)) {
            return false;
        }
        UserViewInfo userViewInfo = (UserViewInfo) obj;
        return j32.a(this.firstName, userViewInfo.firstName) && j32.a(this.lastName, userViewInfo.lastName) && j32.a(this.smallPicture, userViewInfo.smallPicture) && j32.a(this.largePicture, userViewInfo.largePicture);
    }

    public int hashCode() {
        return this.largePicture.hashCode() + ik4.a(this.smallPicture, ik4.a(this.lastName, this.firstName.hashCode() * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("UserViewInfo(firstName=");
        sbA.append(this.firstName);
        sbA.append(", lastName=");
        sbA.append(this.lastName);
        sbA.append(", smallPicture=");
        sbA.append(this.smallPicture);
        sbA.append(", largePicture=");
        return h61.a(sbA, this.largePicture, ')');
    }
}
