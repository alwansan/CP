package com.shabakaty.cinemana.data.db.settings;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.pg4;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000f\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, d2 = {"Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "userId", "Ljava/lang/String;", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;", "filterSettings", "Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;", "getFilterSettings", "()Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;", "Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;", "appSettings", "Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;", "getAppSettings", "()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;", "Lcom/shabakaty/downloader/pg4;", "subtitlesSettings", "<init>", "(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class SettingsEntity {
    public final AppSettingsEntity appSettings;
    public final FilterSettingsEntity filterSettings;
    public final pg4 subtitlesSettings;
    public String userId;

    public SettingsEntity(String str, FilterSettingsEntity filterSettingsEntity, AppSettingsEntity appSettingsEntity, pg4 pg4Var) {
        j32.e(str, "userId");
        j32.e(filterSettingsEntity, "filterSettings");
        j32.e(appSettingsEntity, "appSettings");
        j32.e(pg4Var, "subtitlesSettings");
        this.userId = str;
        this.filterSettings = filterSettingsEntity;
        this.appSettings = appSettingsEntity;
        this.subtitlesSettings = pg4Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsEntity)) {
            return false;
        }
        SettingsEntity settingsEntity = (SettingsEntity) obj;
        return j32.a(this.userId, settingsEntity.userId) && j32.a(this.filterSettings, settingsEntity.filterSettings) && j32.a(this.appSettings, settingsEntity.appSettings) && j32.a(this.subtitlesSettings, settingsEntity.subtitlesSettings);
    }

    public int hashCode() {
        return this.subtitlesSettings.hashCode() + ((this.appSettings.hashCode() + ((this.filterSettings.hashCode() + (this.userId.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SettingsEntity(userId=");
        sbA.append(this.userId);
        sbA.append(", filterSettings=");
        sbA.append(this.filterSettings);
        sbA.append(", appSettings=");
        sbA.append(this.appSettings);
        sbA.append(", subtitlesSettings=");
        sbA.append(this.subtitlesSettings);
        sbA.append(')');
        return sbA.toString();
    }

    public /* synthetic */ SettingsEntity(String str, FilterSettingsEntity filterSettingsEntity, AppSettingsEntity appSettingsEntity, pg4 pg4Var, int i) {
        this(str, (i & 2) != 0 ? new FilterSettingsEntity(null, false, false, 7) : null, (i & 4) != 0 ? new AppSettingsEntity(null, null, 0, false, 15) : null, (i & 8) != 0 ? new pg4(0, 0, 0, null, null, null, 63) : null);
    }
}
