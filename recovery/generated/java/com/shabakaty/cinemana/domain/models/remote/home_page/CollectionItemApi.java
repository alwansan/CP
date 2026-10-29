package com.shabakaty.cinemana.domain.models.remote.home_page;

import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: CollectionItemApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\"\u0010\u0017\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\"\u0010\u001a\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\"\u0010\u001d\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010R\"\u0010 \u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b \u0010\f\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010¨\u0006#"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "content", "Ljava/util/List;", "getContent", "()Ljava/util/List;", "setContent", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "groupsID", "getGroupsID", "setGroupsID", "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl", "setImgMediumThumbObjUrl", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "imgThumbObjUrl", "getImgThumbObjUrl", "setImgThumbObjUrl", "displayName", "getDisplayName", "setDisplayName", "title", "getTitle", "setTitle", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class CollectionItemApi {

    @c14("content")
    public List<VideoModelApi> content;

    @c14("display_name")
    public String displayName;

    @c14("groupsID")
    public String groupsID;

    @c14("id")
    public String id;

    @c14("imgMediumThumbObjUrl")
    public String imgMediumThumbObjUrl;

    @c14("imgObjUrl")
    public String imgObjUrl;

    @c14("imgThumbObjUrl")
    public String imgThumbObjUrl;

    @c14("title")
    public String title;

    public CollectionItemApi() {
        this(null, null, null, null, null, null, null, null, 255);
    }

    public CollectionItemApi(List list, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i) {
        w21 w21Var = (i & 1) != 0 ? w21.r : null;
        String str8 = (i & 2) != 0 ? BuildConfig.FLAVOR : null;
        String str9 = (i & 4) != 0 ? BuildConfig.FLAVOR : null;
        String str10 = (i & 8) != 0 ? BuildConfig.FLAVOR : null;
        String str11 = (i & 16) != 0 ? BuildConfig.FLAVOR : null;
        String str12 = (i & 32) != 0 ? BuildConfig.FLAVOR : null;
        String str13 = (i & 64) != 0 ? BuildConfig.FLAVOR : null;
        String str14 = (i & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : null;
        j32.e(w21Var, "content");
        j32.e(str8, "id");
        j32.e(str9, "groupsID");
        j32.e(str10, "imgMediumThumbObjUrl");
        j32.e(str11, "imgObjUrl");
        j32.e(str12, "imgThumbObjUrl");
        j32.e(str13, "displayName");
        j32.e(str14, "title");
        this.content = w21Var;
        this.id = str8;
        this.groupsID = str9;
        this.imgMediumThumbObjUrl = str10;
        this.imgObjUrl = str11;
        this.imgThumbObjUrl = str12;
        this.displayName = str13;
        this.title = str14;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CollectionItemApi)) {
            return false;
        }
        CollectionItemApi collectionItemApi = (CollectionItemApi) obj;
        return j32.a(this.content, collectionItemApi.content) && j32.a(this.id, collectionItemApi.id) && j32.a(this.groupsID, collectionItemApi.groupsID) && j32.a(this.imgMediumThumbObjUrl, collectionItemApi.imgMediumThumbObjUrl) && j32.a(this.imgObjUrl, collectionItemApi.imgObjUrl) && j32.a(this.imgThumbObjUrl, collectionItemApi.imgThumbObjUrl) && j32.a(this.displayName, collectionItemApi.displayName) && j32.a(this.title, collectionItemApi.title);
    }

    public int hashCode() {
        return this.title.hashCode() + ik4.a(this.displayName, ik4.a(this.imgThumbObjUrl, ik4.a(this.imgObjUrl, ik4.a(this.imgMediumThumbObjUrl, ik4.a(this.groupsID, ik4.a(this.id, this.content.hashCode() * 31, 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("CollectionItemApi(content=");
        sbA.append(this.content);
        sbA.append(", id=");
        sbA.append(this.id);
        sbA.append(", groupsID=");
        sbA.append(this.groupsID);
        sbA.append(", imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", displayName=");
        sbA.append(this.displayName);
        sbA.append(", title=");
        return h61.a(sbA, this.title, ')');
    }
}
