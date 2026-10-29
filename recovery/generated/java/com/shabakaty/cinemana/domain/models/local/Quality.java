package com.shabakaty.cinemana.domain.models.local;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: compiled from: Quality.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/Quality;", "Ljava/io/Serializable;", BuildConfig.FLAVOR, "resolution", "Ljava/lang/String;", "getResolution", "()Ljava/lang/String;", "setResolution", "(Ljava/lang/String;)V", "name", "getName", "setName", "url", "getUrl", "setUrl", BuildConfig.FLAVOR, "windowIndex", "I", "getWindowIndex", "()I", "setWindowIndex", "(I)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class Quality implements Serializable {
    public String name;
    public String resolution;
    public String url;
    public int windowIndex;

    public Quality() {
        this(BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Quality) {
            return j32.a(this.resolution, ((Quality) obj).resolution);
        }
        return false;
    }

    public int hashCode() {
        return ik4.a(this.url, ik4.a(this.name, this.resolution.hashCode() * 31, 31), 31) + this.windowIndex;
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public String getResolution() {
        return this.resolution;
    }

    public Quality(String str, String str2, String str3) {
        j32.e(str, "resolution");
        j32.e(str2, "name");
        j32.e(str3, "url");
        this.resolution = str;
        this.name = str2;
        this.url = str3;
    }
}
