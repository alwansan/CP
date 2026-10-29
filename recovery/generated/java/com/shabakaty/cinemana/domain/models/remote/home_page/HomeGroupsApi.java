package com.shabakaty.cinemana.domain.models.remote.home_page;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomeGroupsApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/home_page/HomeGroupsApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;", "groups", "Ljava/util/List;", "getGroups", "()Ljava/util/List;", "setGroups", "(Ljava/util/List;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class HomeGroupsApi {

    @c14("groups")
    public List<VideosGroupApi> groups;

    public HomeGroupsApi() {
        w21 w21Var = w21.r;
        j32.e(w21Var, "groups");
        this.groups = w21Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HomeGroupsApi) && j32.a(this.groups, ((HomeGroupsApi) obj).groups);
    }

    public int hashCode() {
        return this.groups.hashCode();
    }

    public String toString() {
        StringBuilder sbA = um3.a("HomeGroupsApi(groups=");
        sbA.append(this.groups);
        sbA.append(')');
        return sbA.toString();
    }
}
