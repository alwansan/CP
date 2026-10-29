package com.shabakaty.cinemana.domain.models.remote.home_page;

import androidx.annotation.Keep;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ui.home_fragment.HomeItem;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.nn0;
import com.shabakaty.downloader.um3;
import kotlin.Metadata;

/* JADX INFO: compiled from: AdApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u001c\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0011\u001a\u00020\b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b4\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\bHÆ\u0003J\t\u0010\f\u001a\u00020\bHÆ\u0003J\t\u0010\r\u001a\u00020\bHÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\bHÆ\u0003J]\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\bHÆ\u0001J\t\u0010\u0019\u001a\u00020\bHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001aHÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0010\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010\u0011\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010#\u001a\u0004\b(\u0010%\"\u0004\b)\u0010'R\"\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010#\u001a\u0004\b*\u0010%\"\u0004\b+\u0010'R\"\u0010\u0014\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010#\u001a\u0004\b,\u0010%\"\u0004\b-\u0010'R\"\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010#\u001a\u0004\b.\u0010%\"\u0004\b/\u0010'R$\u0010\u0016\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010#\u001a\u0004\b0\u0010%\"\u0004\b1\u0010'R$\u0010\u0017\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010#\u001a\u0004\b2\u0010%\"\u0004\b3\u0010'¨\u00066"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/home_page/AdApi;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;", "asVideoAd", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Image;", "asImageAd", BuildConfig.FLAVOR, "component1", BuildConfig.FLAVOR, "component2", "component3", "component4", "component5", "component6", "component7", "component8", "success", "description", "id", "imgMobileUrl", "imgUrl", "linkUrl", "beaconUrl", "type", "copy", "toString", BuildConfig.FLAVOR, "hashCode", "other", "equals", "Z", "getSuccess", "()Z", "setSuccess", "(Z)V", "Ljava/lang/String;", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "getId", "setId", "getImgMobileUrl", "setImgMobileUrl", "getImgUrl", "setImgUrl", "getLinkUrl", "setLinkUrl", "getBeaconUrl", "setBeaconUrl", "getType", "setType", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class AdApi {

    @c14("beacon")
    private String beaconUrl;

    @c14("description")
    private String description;

    @c14("id")
    private String id;

    @c14("creative")
    private String imgMobileUrl;

    @c14("img_url")
    private String imgUrl;

    @c14("click")
    private String linkUrl;

    @c14("success")
    private boolean success;

    @c14("type")
    private String type;

    public AdApi(boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        j32.e(str, "description");
        j32.e(str2, "id");
        j32.e(str3, "imgMobileUrl");
        j32.e(str4, "imgUrl");
        j32.e(str5, "linkUrl");
        this.success = z;
        this.description = str;
        this.id = str2;
        this.imgMobileUrl = str3;
        this.imgUrl = str4;
        this.linkUrl = str5;
        this.beaconUrl = str6;
        this.type = str7;
    }

    public final HomeItem.Ad.Image asImageAd() {
        return new HomeItem.Ad.Image(this.imgMobileUrl, this.linkUrl, this.beaconUrl, this.description);
    }

    public final HomeItem.Ad.Video asVideoAd() {
        return new HomeItem.Ad.Video(this.imgMobileUrl, this.linkUrl, this.beaconUrl, this.description);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImgMobileUrl() {
        return this.imgMobileUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getImgUrl() {
        return this.imgUrl;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getLinkUrl() {
        return this.linkUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBeaconUrl() {
        return this.beaconUrl;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final AdApi copy(boolean success, String description, String id, String imgMobileUrl, String imgUrl, String linkUrl, String beaconUrl, String type) {
        j32.e(description, "description");
        j32.e(id, "id");
        j32.e(imgMobileUrl, "imgMobileUrl");
        j32.e(imgUrl, "imgUrl");
        j32.e(linkUrl, "linkUrl");
        return new AdApi(success, description, id, imgMobileUrl, imgUrl, linkUrl, beaconUrl, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdApi)) {
            return false;
        }
        AdApi adApi = (AdApi) other;
        return this.success == adApi.success && j32.a(this.description, adApi.description) && j32.a(this.id, adApi.id) && j32.a(this.imgMobileUrl, adApi.imgMobileUrl) && j32.a(this.imgUrl, adApi.imgUrl) && j32.a(this.linkUrl, adApi.linkUrl) && j32.a(this.beaconUrl, adApi.beaconUrl) && j32.a(this.type, adApi.type);
    }

    public final String getBeaconUrl() {
        return this.beaconUrl;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getId() {
        return this.id;
    }

    public final String getImgMobileUrl() {
        return this.imgMobileUrl;
    }

    public final String getImgUrl() {
        return this.imgUrl;
    }

    public final String getLinkUrl() {
        return this.linkUrl;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final String getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    public int hashCode() {
        boolean z = this.success;
        int r0 = z ? 1 : 0;
        if (z) {
            r0 = 1;
        }
        int iA = ik4.a(this.linkUrl, ik4.a(this.imgUrl, ik4.a(this.imgMobileUrl, ik4.a(this.id, ik4.a(this.description, r0 * 31, 31), 31), 31), 31), 31);
        String str = this.beaconUrl;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.type;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setBeaconUrl(String str) {
        this.beaconUrl = str;
    }

    public final void setDescription(String str) {
        j32.e(str, "<set-?>");
        this.description = str;
    }

    public final void setId(String str) {
        j32.e(str, "<set-?>");
        this.id = str;
    }

    public final void setImgMobileUrl(String str) {
        j32.e(str, "<set-?>");
        this.imgMobileUrl = str;
    }

    public final void setImgUrl(String str) {
        j32.e(str, "<set-?>");
        this.imgUrl = str;
    }

    public final void setLinkUrl(String str) {
        j32.e(str, "<set-?>");
        this.linkUrl = str;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        StringBuilder sbA = um3.a("AdApi(success=");
        sbA.append(this.success);
        sbA.append(", description=");
        sbA.append(this.description);
        sbA.append(", id=");
        sbA.append(this.id);
        sbA.append(", imgMobileUrl=");
        sbA.append(this.imgMobileUrl);
        sbA.append(", imgUrl=");
        sbA.append(this.imgUrl);
        sbA.append(", linkUrl=");
        sbA.append(this.linkUrl);
        sbA.append(", beaconUrl=");
        sbA.append((Object) this.beaconUrl);
        sbA.append(", type=");
        sbA.append((Object) this.type);
        sbA.append(')');
        return sbA.toString();
    }

    public /* synthetic */ AdApi(boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, nn0 nn0Var) {
        this(z, (i & 2) != 0 ? BuildConfig.FLAVOR : str, (i & 4) != 0 ? BuildConfig.FLAVOR : str2, (i & 8) != 0 ? BuildConfig.FLAVOR : str3, (i & 16) != 0 ? BuildConfig.FLAVOR : str4, (i & 32) != 0 ? BuildConfig.FLAVOR : str5, (i & 64) != 0 ? BuildConfig.FLAVOR : str6, (i & RecyclerView.b0.FLAG_IGNORE) == 0 ? str7 : BuildConfig.FLAVOR);
    }
}
