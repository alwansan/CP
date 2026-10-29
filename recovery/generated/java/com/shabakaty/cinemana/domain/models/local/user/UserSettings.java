package com.shabakaty.cinemana.domain.models.local.user;

import com.cinemana.pro.R;
import com.connectsdk.discovery.provider.ssdp.Icon;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q12;
import com.shabakaty.downloader.um3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: UserSettings.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0018\u0019R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;", "parentalControl", "Ljava/util/List;", "getParentalControl", "()Ljava/util/List;", "setParentalControl", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "parentalLevelStatus", "I", "getParentalLevelStatus", "()I", "setParentalLevelStatus", "(I)V", "Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;", "userTranslation", "Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;", "getUserTranslation", "()Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;", "setUserTranslation", "(Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;)V", "ParentalControl", "UserTranslation", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class UserSettings {
    public List<ParentalControl> parentalControl;
    public int parentalLevelStatus;
    public UserTranslation userTranslation;

    /* JADX INFO: compiled from: UserSettings.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$ParentalControl;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "ageLimit", "Ljava/lang/String;", "getAgeLimit", "()Ljava/lang/String;", "setAgeLimit", "(Ljava/lang/String;)V", "filmRating", "getFilmRating", "setFilmRating", "id", "getId", "setId", "name", "getName", "setName", BuildConfig.FLAVOR, Icon.TAG, "I", "getIcon", "()I", "setIcon", "(I)V", "tvShowRating", "getTvShowRating", "setTvShowRating", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class ParentalControl {
        public String ageLimit;
        public String filmRating;
        public int icon;
        public String id;
        public String name;
        public String tvShowRating;

        public ParentalControl() {
            j32.e(BuildConfig.FLAVOR, "ageLimit");
            j32.e(BuildConfig.FLAVOR, "filmRating");
            j32.e(BuildConfig.FLAVOR, "id");
            j32.e(BuildConfig.FLAVOR, "name");
            j32.e(BuildConfig.FLAVOR, "tvShowRating");
            this.ageLimit = BuildConfig.FLAVOR;
            this.filmRating = BuildConfig.FLAVOR;
            this.id = BuildConfig.FLAVOR;
            this.name = BuildConfig.FLAVOR;
            this.icon = R.drawable.ic_content_filter_all;
            this.tvShowRating = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ParentalControl)) {
                return false;
            }
            ParentalControl parentalControl = (ParentalControl) obj;
            return j32.a(this.ageLimit, parentalControl.ageLimit) && j32.a(this.filmRating, parentalControl.filmRating) && j32.a(this.id, parentalControl.id) && j32.a(this.name, parentalControl.name) && this.icon == parentalControl.icon && j32.a(this.tvShowRating, parentalControl.tvShowRating);
        }

        public int hashCode() {
            return this.tvShowRating.hashCode() + ((ik4.a(this.name, ik4.a(this.id, ik4.a(this.filmRating, this.ageLimit.hashCode() * 31, 31), 31), 31) + this.icon) * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("ParentalControl(ageLimit=");
            sbA.append(this.ageLimit);
            sbA.append(", filmRating=");
            sbA.append(this.filmRating);
            sbA.append(", id=");
            sbA.append(this.id);
            sbA.append(", name=");
            sbA.append(this.name);
            sbA.append(", icon=");
            sbA.append(this.icon);
            sbA.append(", tvShowRating=");
            return h61.a(sbA, this.tvShowRating, ')');
        }
    }

    /* JADX INFO: compiled from: UserSettings.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/user/UserSettings$UserTranslation;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", BuildConfig.FLAVOR, FileDownloadModel.STATUS, "I", "getStatus", "()I", "setStatus", "(I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class UserTranslation {
        public String name;
        public int status;

        public UserTranslation() {
            this(null, 0, 3);
        }

        public UserTranslation(String str, int i, int i2) {
            String str2 = (i2 & 1) != 0 ? BuildConfig.FLAVOR : null;
            i = (i2 & 2) != 0 ? 0 : i;
            j32.e(str2, "name");
            this.name = str2;
            this.status = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UserTranslation)) {
                return false;
            }
            UserTranslation userTranslation = (UserTranslation) obj;
            return j32.a(this.name, userTranslation.name) && this.status == userTranslation.status;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.status;
        }

        public String toString() {
            StringBuilder sbA = um3.a("UserTranslation(name=");
            sbA.append(this.name);
            sbA.append(", status=");
            return q12.a(sbA, this.status, ')');
        }
    }

    public UserSettings() {
        ArrayList arrayList = new ArrayList();
        UserTranslation userTranslation = new UserTranslation(null, 0, 3);
        j32.e(arrayList, "parentalControl");
        j32.e(userTranslation, "userTranslation");
        this.parentalControl = arrayList;
        this.parentalLevelStatus = 0;
        this.userTranslation = userTranslation;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserSettings)) {
            return false;
        }
        UserSettings userSettings = (UserSettings) obj;
        return j32.a(this.parentalControl, userSettings.parentalControl) && this.parentalLevelStatus == userSettings.parentalLevelStatus && j32.a(this.userTranslation, userSettings.userTranslation);
    }

    public int hashCode() {
        return this.userTranslation.hashCode() + (((this.parentalControl.hashCode() * 31) + this.parentalLevelStatus) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("UserSettings(parentalControl=");
        sbA.append(this.parentalControl);
        sbA.append(", parentalLevelStatus=");
        sbA.append(this.parentalLevelStatus);
        sbA.append(", userTranslation=");
        sbA.append(this.userTranslation);
        sbA.append(')');
        return sbA.toString();
    }
}
