package com.shabakaty.cinemana.data.db.settings;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.ia3;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.xh2;
import kotlin.Metadata;

/* JADX INFO: compiled from: SettingsEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "skipInAppropriateScenes", "Z", "getSkipInAppropriateScenes", "()Z", "showContentWithNoSubtitle", "getShowContentWithNoSubtitle", "setShowContentWithNoSubtitle", "(Z)V", "Lcom/shabakaty/downloader/ia3;", "parentalLevel", "<init>", "(Lcom/shabakaty/downloader/ia3;ZZ)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class FilterSettingsEntity {
    public ia3 parentalLevel;
    public boolean showContentWithNoSubtitle;
    public final boolean skipInAppropriateScenes;

    /* JADX WARN: Illegal instructions before constructor call */
    public FilterSettingsEntity() {
        boolean z = false;
        this(null, z, z, 7);
    }

    public FilterSettingsEntity(ia3 ia3Var, boolean z, boolean z2) {
        j32.e(ia3Var, "parentalLevel");
        this.parentalLevel = ia3Var;
        this.skipInAppropriateScenes = z;
        this.showContentWithNoSubtitle = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilterSettingsEntity)) {
            return false;
        }
        FilterSettingsEntity filterSettingsEntity = (FilterSettingsEntity) obj;
        return j32.a(this.parentalLevel, filterSettingsEntity.parentalLevel) && this.skipInAppropriateScenes == filterSettingsEntity.skipInAppropriateScenes && this.showContentWithNoSubtitle == filterSettingsEntity.showContentWithNoSubtitle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = this.parentalLevel.hashCode() * 31;
        boolean z = this.skipInAppropriateScenes;
        int r1 = z ? 1 : 0;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        boolean z2 = this.showContentWithNoSubtitle;
        return i + (z2 ? 1 : 0);
    }

    public String toString() {
        StringBuilder sbA = um3.a("FilterSettingsEntity(parentalLevel=");
        sbA.append(this.parentalLevel);
        sbA.append(", skipInAppropriateScenes=");
        sbA.append(this.skipInAppropriateScenes);
        sbA.append(", showContentWithNoSubtitle=");
        return xh2.a(sbA, this.showContentWithNoSubtitle, ')');
    }

    public /* synthetic */ FilterSettingsEntity(ia3 ia3Var, boolean z, boolean z2, int i) {
        this((i & 1) != 0 ? ia3.b.d : null, (i & 2) != 0 ? true : z, (i & 4) != 0 ? false : z2);
    }
}
