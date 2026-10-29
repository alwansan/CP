package com.shabakaty.cinemana.domain.models.remote.user;

import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q12;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: UserSettingsApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0018\u0019R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;", "parentalControl", "Ljava/util/List;", "getParentalControl", "()Ljava/util/List;", "setParentalControl", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "parentalLevelStatus", "I", "getParentalLevelStatus", "()I", "setParentalLevelStatus", "(I)V", "Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;", "userTranslation", "Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;", "getUserTranslation", "()Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;", "setUserTranslation", "(Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;)V", "ParentalControlApi", "UserTranslationApi", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class UserSettingsApi {

    @c14("parentalControl")
    public List<ParentalControlApi> parentalControl;

    @c14("parentalLevelStatus")
    public int parentalLevelStatus;

    @c14("userTranslation")
    public UserTranslationApi userTranslation;

    /* JADX INFO: compiled from: UserSettingsApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$ParentalControlApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "ageLimit", "Ljava/lang/String;", "getAgeLimit", "()Ljava/lang/String;", "setAgeLimit", "(Ljava/lang/String;)V", "filmRating", "getFilmRating", "setFilmRating", "id", "getId", "setId", "name", "getName", "setName", "tvShowRating", "getTvShowRating", "setTvShowRating", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class ParentalControlApi {

        @c14("ageLimit")
        public String ageLimit;

        @c14("filmRating")
        public String filmRating;

        @c14("id")
        public String id;

        @c14("name")
        public String name;

        @c14("SeriesRating")
        public String tvShowRating;

        public ParentalControlApi() {
            j32.e(BuildConfig.FLAVOR, "ageLimit");
            j32.e(BuildConfig.FLAVOR, "filmRating");
            j32.e(BuildConfig.FLAVOR, "id");
            j32.e(BuildConfig.FLAVOR, "name");
            j32.e(BuildConfig.FLAVOR, "tvShowRating");
            this.ageLimit = BuildConfig.FLAVOR;
            this.filmRating = BuildConfig.FLAVOR;
            this.id = BuildConfig.FLAVOR;
            this.name = BuildConfig.FLAVOR;
            this.tvShowRating = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ParentalControlApi)) {
                return false;
            }
            ParentalControlApi parentalControlApi = (ParentalControlApi) obj;
            return j32.a(this.ageLimit, parentalControlApi.ageLimit) && j32.a(this.filmRating, parentalControlApi.filmRating) && j32.a(this.id, parentalControlApi.id) && j32.a(this.name, parentalControlApi.name) && j32.a(this.tvShowRating, parentalControlApi.tvShowRating);
        }

        public int hashCode() {
            return this.tvShowRating.hashCode() + ik4.a(this.name, ik4.a(this.id, ik4.a(this.filmRating, this.ageLimit.hashCode() * 31, 31), 31), 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("ParentalControlApi(ageLimit=");
            sbA.append(this.ageLimit);
            sbA.append(", filmRating=");
            sbA.append(this.filmRating);
            sbA.append(", id=");
            sbA.append(this.id);
            sbA.append(", name=");
            sbA.append(this.name);
            sbA.append(", tvShowRating=");
            return h61.a(sbA, this.tvShowRating, ')');
        }
    }

    /* JADX INFO: compiled from: UserSettingsApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/user/UserSettingsApi$UserTranslationApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", BuildConfig.FLAVOR, FileDownloadModel.STATUS, "I", "getStatus", "()I", "setStatus", "(I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class UserTranslationApi {

        @c14("name")
        public String name;

        @c14(FileDownloadModel.STATUS)
        public int status;

        public UserTranslationApi() {
            this(null, 0, 3);
        }

        public UserTranslationApi(String str, int i, int i2) {
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
            if (!(obj instanceof UserTranslationApi)) {
                return false;
            }
            UserTranslationApi userTranslationApi = (UserTranslationApi) obj;
            return j32.a(this.name, userTranslationApi.name) && this.status == userTranslationApi.status;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.status;
        }

        public String toString() {
            StringBuilder sbA = um3.a("UserTranslationApi(name=");
            sbA.append(this.name);
            sbA.append(", status=");
            return q12.a(sbA, this.status, ')');
        }
    }

    public UserSettingsApi() {
        w21 w21Var = w21.r;
        UserTranslationApi userTranslationApi = new UserTranslationApi(null, 0, 3);
        j32.e(w21Var, "parentalControl");
        j32.e(userTranslationApi, "userTranslation");
        this.parentalControl = w21Var;
        this.parentalLevelStatus = 0;
        this.userTranslation = userTranslationApi;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserSettingsApi)) {
            return false;
        }
        UserSettingsApi userSettingsApi = (UserSettingsApi) obj;
        return j32.a(this.parentalControl, userSettingsApi.parentalControl) && this.parentalLevelStatus == userSettingsApi.parentalLevelStatus && j32.a(this.userTranslation, userSettingsApi.userTranslation);
    }

    public int hashCode() {
        return this.userTranslation.hashCode() + (((this.parentalControl.hashCode() * 31) + this.parentalLevelStatus) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("UserSettingsApi(parentalControl=");
        sbA.append(this.parentalControl);
        sbA.append(", parentalLevelStatus=");
        sbA.append(this.parentalLevelStatus);
        sbA.append(", userTranslation=");
        sbA.append(this.userTranslation);
        sbA.append(')');
        return sbA.toString();
    }
}
