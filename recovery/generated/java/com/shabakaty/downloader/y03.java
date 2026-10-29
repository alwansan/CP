package com.shabakaty.downloader;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationOpenedHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class y03 implements com.onesignal.q0.t {
    public final Context a;

    /* JADX INFO: compiled from: NotificationOpenedHandler.kt */
    public static final class a extends af2 implements rm1<qv4> {
        public final /* synthetic */ JSONObject r;
        public final /* synthetic */ y03 s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(JSONObject jSONObject, y03 y03Var) {
            super(0);
            this.r = jSONObject;
            this.s = y03Var;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            Parcelable group;
            String strOptString = this.r.optString("videoId", "0");
            String strOptString2 = this.r.optString("collectionId", "0");
            boolean zOptBoolean = this.r.optBoolean("isFranchise", false);
            Intent intent = new Intent(this.s.a, (Class<?>) HomeActivity.class);
            intent.addFlags(268435456);
            if (!j32.a(strOptString, "0")) {
                VideoModel videoModel = new VideoModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE);
                j32.d(strOptString, "videoId");
                videoModel.l(strOptString);
                intent.putExtra("VideoModelArg", videoModel);
            } else if (!j32.a(strOptString2, "0")) {
                if (zOptBoolean) {
                    j32.d(strOptString2, "collectionId");
                    group = new ShowMorePageDataType.Dynamic.Franchise(BuildConfig.FLAVOR, strOptString2);
                } else {
                    j32.d(strOptString2, "collectionId");
                    group = new ShowMorePageDataType.Dynamic.Group(BuildConfig.FLAVOR, strOptString2, true);
                }
                intent.putExtra("ShowMoreDataType", group);
            }
            this.s.a.startActivity(intent);
            return qv4.a;
        }
    }

    public y03(Context context) {
        this.a = context;
    }

    @Override // com.onesignal.q0.t
    public void a(com.onesignal.e0 e0Var) {
        c33 c33Var;
        JSONObject jSONObject = null;
        if (e0Var != null && (c33Var = e0Var.c) != null) {
            jSONObject = c33Var.i;
        }
        if (jSONObject != null) {
            a aVar = new a(jSONObject, this);
            j32.e(aVar, "function");
            Objects.requireNonNull(0, "item is null");
            uv3.c(uv3.b(uv3.d(new r74(0).d(2000L, TimeUnit.MILLISECONDS))), new sv3(aVar), tv3.r);
        }
    }
}
