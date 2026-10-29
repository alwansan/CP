package com.shabakaty.cinemana.data.db.settings;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ky4;
import com.shabakaty.downloader.tx4;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.xh2;
import kotlin.Metadata;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "seekPeriod", "I", "getSeekPeriod", "()I", BuildConfig.FLAVOR, "showSubtitles", "Z", "getShowSubtitles", "()Z", "Lcom/shabakaty/downloader/tx4;", "language", "Lcom/shabakaty/downloader/ky4;", "theme", "<init>", "(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZ)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class AppSettingsEntity {
    public final tx4 language;
    public final int seekPeriod;
    public final boolean showSubtitles;
    public final ky4 theme;

    public AppSettingsEntity() {
        this(null, null, 0, false, 15);
    }

    public AppSettingsEntity(tx4 tx4Var, ky4 ky4Var, int i, boolean z) {
        j32.e(tx4Var, "language");
        j32.e(ky4Var, "theme");
        this.language = tx4Var;
        this.theme = ky4Var;
        this.seekPeriod = i;
        this.showSubtitles = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSettingsEntity)) {
            return false;
        }
        AppSettingsEntity appSettingsEntity = (AppSettingsEntity) obj;
        return j32.a(this.language, appSettingsEntity.language) && j32.a(this.theme, appSettingsEntity.theme) && this.seekPeriod == appSettingsEntity.seekPeriod && this.showSubtitles == appSettingsEntity.showSubtitles;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    public int hashCode() {
        int iHashCode = (((this.theme.hashCode() + (this.language.hashCode() * 31)) * 31) + this.seekPeriod) * 31;
        boolean z = this.showSubtitles;
        int r0 = z ? 1 : 0;
        if (z) {
            r0 = 1;
        }
        return iHashCode + r0;
    }

    public String toString() {
        StringBuilder sbA = um3.a("AppSettingsEntity(language=");
        sbA.append(this.language);
        sbA.append(", theme=");
        sbA.append(this.theme);
        sbA.append(", seekPeriod=");
        sbA.append(this.seekPeriod);
        sbA.append(", showSubtitles=");
        return xh2.a(sbA, this.showSubtitles, ')');
    }

    public /* synthetic */ AppSettingsEntity(tx4 tx4Var, ky4 ky4Var, int i, boolean z, int i2) {
        this((i2 & 1) != 0 ? tx4.a.b : null, (i2 & 2) != 0 ? ky4.a.b : null, (i2 & 4) != 0 ? 10 : i, (i2 & 8) != 0 ? true : z);
    }
}
