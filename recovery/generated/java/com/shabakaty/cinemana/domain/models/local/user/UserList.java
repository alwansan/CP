package com.shabakaty.cinemana.domain.models.local.user;

import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: UserList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/user/UserList;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", PListParser.TAG_DATA, "Ljava/util/List;", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", BuildConfig.FLAVOR, FileDownloadModel.STATUS, "Ljava/lang/String;", "getStatus", "()Ljava/lang/String;", "setStatus", "(Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class UserList {
    public List<VideoModel> data;
    public String status;

    public UserList() {
        ArrayList arrayList = new ArrayList();
        j32.e(arrayList, PListParser.TAG_DATA);
        j32.e(BuildConfig.FLAVOR, FileDownloadModel.STATUS);
        this.data = arrayList;
        this.status = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserList)) {
            return false;
        }
        UserList userList = (UserList) obj;
        return j32.a(this.data, userList.data) && j32.a(this.status, userList.status);
    }

    public int hashCode() {
        return this.status.hashCode() + (this.data.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("UserList(data=");
        sbA.append(this.data);
        sbA.append(", status=");
        return h61.a(sbA, this.status, ')');
    }
}
