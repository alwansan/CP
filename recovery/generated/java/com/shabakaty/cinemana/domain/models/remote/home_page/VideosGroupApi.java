package com.shabakaty.cinemana.domain.models.remote.home_page;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q12;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomeGroupsApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/home_page/VideosGroupApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "videosList", "Ljava/util/List;", "getVideosList", "()Ljava/util/List;", "setVideosList", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "groupsID", "getGroupsID", "setGroupsID", BuildConfig.FLAVOR, "hasPagination", "I", "getHasPagination", "()I", "setHasPagination", "(I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class VideosGroupApi {

    @c14("groupsID")
    public String groupsID;

    @c14("hasPagination")
    public int hasPagination;

    @c14("title")
    public String title;

    @c14("content")
    public List<VideoModelApi> videosList;

    public VideosGroupApi() {
        w21 w21Var = w21.r;
        j32.e(w21Var, "videosList");
        j32.e(BuildConfig.FLAVOR, "title");
        j32.e(BuildConfig.FLAVOR, "groupsID");
        this.videosList = w21Var;
        this.title = BuildConfig.FLAVOR;
        this.groupsID = BuildConfig.FLAVOR;
        this.hasPagination = 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideosGroupApi)) {
            return false;
        }
        VideosGroupApi videosGroupApi = (VideosGroupApi) obj;
        return j32.a(this.videosList, videosGroupApi.videosList) && j32.a(this.title, videosGroupApi.title) && j32.a(this.groupsID, videosGroupApi.groupsID) && this.hasPagination == videosGroupApi.hasPagination;
    }

    public int hashCode() {
        return ik4.a(this.groupsID, ik4.a(this.title, this.videosList.hashCode() * 31, 31), 31) + this.hasPagination;
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideosGroupApi(videosList=");
        sbA.append(this.videosList);
        sbA.append(", title=");
        sbA.append(this.title);
        sbA.append(", groupsID=");
        sbA.append(this.groupsID);
        sbA.append(", hasPagination=");
        return q12.a(sbA, this.hasPagination, ')');
    }
}
