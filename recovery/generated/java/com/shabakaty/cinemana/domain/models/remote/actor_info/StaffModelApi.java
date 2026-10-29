package com.shabakaty.cinemana.domain.models.remote.actor_info;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: StaffModelApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\b¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/actor_info/StaffModelApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "imgMediumThumbObjUrl", "Ljava/lang/String;", "getImgMediumThumbObjUrl", "()Ljava/lang/String;", "setImgMediumThumbObjUrl", "(Ljava/lang/String;)V", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "imgThumbObjUrl", "getImgThumbObjUrl", "setImgThumbObjUrl", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "items", "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "role", "getRole", "setRole", "title", "getTitle", "setTitle", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class StaffModelApi {

    @c14("imgMediumThumbObjUrl")
    public String imgMediumThumbObjUrl;

    @c14("imgObjUrl")
    public String imgObjUrl;

    @c14("imgThumbObjUrl")
    public String imgThumbObjUrl;

    @c14("items")
    public List<VideoModelApi> items;

    @c14("role")
    public String role;

    @c14("title")
    public String title;

    public StaffModelApi() {
        w21 w21Var = w21.r;
        j32.e(BuildConfig.FLAVOR, "imgMediumThumbObjUrl");
        j32.e(BuildConfig.FLAVOR, "imgObjUrl");
        j32.e(BuildConfig.FLAVOR, "imgThumbObjUrl");
        j32.e(w21Var, "items");
        j32.e(BuildConfig.FLAVOR, "role");
        j32.e(BuildConfig.FLAVOR, "title");
        this.imgMediumThumbObjUrl = BuildConfig.FLAVOR;
        this.imgObjUrl = BuildConfig.FLAVOR;
        this.imgThumbObjUrl = BuildConfig.FLAVOR;
        this.items = w21Var;
        this.role = BuildConfig.FLAVOR;
        this.title = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StaffModelApi)) {
            return false;
        }
        StaffModelApi staffModelApi = (StaffModelApi) obj;
        return j32.a(this.imgMediumThumbObjUrl, staffModelApi.imgMediumThumbObjUrl) && j32.a(this.imgObjUrl, staffModelApi.imgObjUrl) && j32.a(this.imgThumbObjUrl, staffModelApi.imgThumbObjUrl) && j32.a(this.items, staffModelApi.items) && j32.a(this.role, staffModelApi.role) && j32.a(this.title, staffModelApi.title);
    }

    public int hashCode() {
        return this.title.hashCode() + ik4.a(this.role, j60.a(this.items, ik4.a(this.imgThumbObjUrl, ik4.a(this.imgObjUrl, this.imgMediumThumbObjUrl.hashCode() * 31, 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("StaffModelApi(imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", items=");
        sbA.append(this.items);
        sbA.append(", role=");
        sbA.append(this.role);
        sbA.append(", title=");
        return h61.a(sbA, this.title, ')');
    }
}
