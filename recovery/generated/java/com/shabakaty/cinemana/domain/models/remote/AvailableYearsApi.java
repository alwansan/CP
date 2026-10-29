package com.shabakaty.cinemana.domain.models.remote;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: AvailableYearsApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/AvailableYearsApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "caption", "Ljava/lang/String;", "getCaption", "()Ljava/lang/String;", "setCaption", "(Ljava/lang/String;)V", "value", "getValue", "setValue", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class AvailableYearsApi {

    @c14("caption")
    public String caption;

    @c14("value")
    public String value;

    public AvailableYearsApi() {
        j32.e(BuildConfig.FLAVOR, "caption");
        j32.e(BuildConfig.FLAVOR, "value");
        this.caption = BuildConfig.FLAVOR;
        this.value = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvailableYearsApi)) {
            return false;
        }
        AvailableYearsApi availableYearsApi = (AvailableYearsApi) obj;
        return j32.a(this.caption, availableYearsApi.caption) && j32.a(this.value, availableYearsApi.value);
    }

    public int hashCode() {
        return this.value.hashCode() + (this.caption.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("AvailableYearsApi(caption=");
        sbA.append(this.caption);
        sbA.append(", value=");
        return h61.a(sbA, this.value, ')');
    }
}
