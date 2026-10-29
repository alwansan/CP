package com.shabakaty.cinemana.domain.models.remote.user;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.remote.VideoModelApi;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: NotificationsListApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/user/NotificationsListApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "new", "Ljava/lang/String;", "getNew", "()Ljava/lang/String;", "setNew", "(Ljava/lang/String;)V", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", "notifications", "Ljava/util/List;", "getNotifications", "()Ljava/util/List;", "setNotifications", "(Ljava/util/List;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class NotificationsListApi {

    @c14("new")
    // Kotlin property `new` conflicts with Java keyword; keep serialized API name via annotation.
    public String newValue;

    @c14("notifications")
    public List<VideoModelApi> notifications;

    public NotificationsListApi() {
        w21 w21Var = w21.r;
        j32.e(BuildConfig.FLAVOR, "new");
        j32.e(w21Var, "notifications");
        this.newValue = BuildConfig.FLAVOR;
        this.notifications = w21Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationsListApi)) {
            return false;
        }
        NotificationsListApi notificationsListApi = (NotificationsListApi) obj;
        return j32.a(this.newValue, notificationsListApi.newValue) && j32.a(this.notifications, notificationsListApi.notifications);
    }

    public int hashCode() {
        return this.notifications.hashCode() + (this.newValue.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("NotificationsListApi(new=");
        sbA.append(this.newValue);
        sbA.append(", notifications=");
        sbA.append(this.notifications);
        sbA.append(')');
        return sbA.toString();
    }
}
