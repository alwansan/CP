package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NetworkInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class hy2 implements wq {
    public final /* synthetic */ gy2 a;

    public hy2(gy2 gy2Var) {
        this.a = gy2Var;
    }

    @Override // com.shabakaty.downloader.wq
    public void onFailure(mq mqVar, IOException iOException) {
        j32.e(mqVar, "call");
        j32.e(iOException, "e");
        gy2 gy2Var = this.a;
        gy2Var.d = BuildConfig.FLAVOR;
        gy2.a(gy2Var);
    }

    @Override // com.shabakaty.downloader.wq
    public void onResponse(mq mqVar, ws3 ws3Var) throws IOException {
        String string;
        j32.e(mqVar, "call");
        j32.e(ws3Var, "response");
        ys3 ys3Var = ws3Var.y;
        j32.c(ys3Var);
        String strG = ys3Var.g();
        gy2 gy2Var = this.a;
        try {
            string = new JSONObject(strG).getString("ip");
        } catch (JSONException e) {
            e.printStackTrace();
            string = BuildConfig.FLAVOR;
        }
        gy2Var.d = string;
        gy2.a(this.a);
    }
}
