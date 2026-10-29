package com.shabakaty.cinemana.data.db.downloads;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.p84;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\t¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;", "cinemanaDownloadItem", "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;", "getCinemanaDownloadItem", "()Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;", "setCinemanaDownloadItem", "(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;", "subtitles", "Ljava/util/List;", "getSubtitles", "()Ljava/util/List;", "setSubtitles", "(Ljava/util/List;)V", "Lcom/shabakaty/downloader/p84;", "skippableScenes", "getSkippableScenes", "setSkippableScenes", "<init>", "(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/util/List;Ljava/util/List;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class CombinedDownloadItem {
    public CinemanaDownloadItem cinemanaDownloadItem;
    public List<p84> skippableScenes;
    public List<SubtitleDb> subtitles;

    public CombinedDownloadItem(CinemanaDownloadItem cinemanaDownloadItem, List<SubtitleDb> list, List<p84> list2) {
        j32.e(cinemanaDownloadItem, "cinemanaDownloadItem");
        j32.e(list, "subtitles");
        j32.e(list2, "skippableScenes");
        this.cinemanaDownloadItem = cinemanaDownloadItem;
        this.subtitles = list;
        this.skippableScenes = list2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CombinedDownloadItem)) {
            return false;
        }
        CombinedDownloadItem combinedDownloadItem = (CombinedDownloadItem) obj;
        return j32.a(this.cinemanaDownloadItem, combinedDownloadItem.cinemanaDownloadItem) && j32.a(this.subtitles, combinedDownloadItem.subtitles) && j32.a(this.skippableScenes, combinedDownloadItem.skippableScenes);
    }

    public int hashCode() {
        return this.skippableScenes.hashCode() + j60.a(this.subtitles, this.cinemanaDownloadItem.hashCode() * 31, 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("CombinedDownloadItem(cinemanaDownloadItem=");
        sbA.append(this.cinemanaDownloadItem);
        sbA.append(", subtitles=");
        sbA.append(this.subtitles);
        sbA.append(", skippableScenes=");
        sbA.append(this.skippableScenes);
        sbA.append(')');
        return sbA.toString();
    }

    public CombinedDownloadItem() {
        CinemanaDownloadItem cinemanaDownloadItem = new CinemanaDownloadItem(null, 0, null, null, null, 0, null, null, null, null, null, null, null, null, null, 0, null, null, null, null, false, null, null, 8388607);
        w21 w21Var = w21.r;
        this(cinemanaDownloadItem, w21Var, w21Var);
    }
}
