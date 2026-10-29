package com.shabakaty.downloader;

import com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o15 implements xc0 {
    public final /* synthetic */ int r = 0;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    public /* synthetic */ o15(VideoModel videoModel, q15 q15Var) {
        this.s = videoModel;
        this.t = q15Var;
    }

    public /* synthetic */ o15(q10 q10Var, tm1 tm1Var) {
        this.s = q10Var;
        this.t = tm1Var;
    }

    public /* synthetic */ o15(xv2 xv2Var, xk xkVar) {
        this.s = xv2Var;
        this.t = xkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        switch (this.r) {
            case 0:
                VideoModel videoModel = (VideoModel) this.s;
                q15 q15Var = (q15) this.t;
                q25 q25Var = (q25) obj;
                j32.e(videoModel, "$videoModel");
                j32.e(q15Var, "this$0");
                if (j32.a(videoModel.kind, "1") && q15Var.b.a(videoModel.nb) == null) {
                    q15Var.c.f(new i25(videoModel.nb, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, null, 0, null, null, null, null, false, null, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, false, -2, 268435455));
                    s25 s25Var = q15Var.b;
                    qm2 qm2Var = q15Var.d;
                    j32.d(q25Var, "it");
                    Objects.requireNonNull(qm2Var);
                    VideoStatusEntity videoStatusEntityMapDtoToDomain = qm2Var.j.mapDtoToDomain(q25Var);
                    String str = videoModel.nb;
                    Objects.requireNonNull(videoStatusEntityMapDtoToDomain);
                    j32.e(str, "<set-?>");
                    videoStatusEntityMapDtoToDomain.id = str;
                    String str2 = videoModel.nb;
                    j32.e(str2, "<set-?>");
                    videoStatusEntityMapDtoToDomain.videoId = str2;
                    s25Var.f(videoStatusEntityMapDtoToDomain);
                    break;
                }
                break;
            case 1:
                q10 q10Var = (q10) this.s;
                tm1 tm1Var = (tm1) this.t;
                VideoModel videoModel2 = (VideoModel) obj;
                j32.e(q10Var, "this$0");
                j32.e(tm1Var, "$onSuccess");
                q10Var.z.setValue(videoModel2);
                j32.d(videoModel2, "it");
                tm1Var.invoke(videoModel2);
                break;
            default:
                xv2 xv2Var = (xv2) this.s;
                xk xkVar = (xk) this.t;
                j32.e(xv2Var, "$consumerObject");
                j32.e(xkVar, "this$0");
                tj tjVar = (tj) xv2Var.getValue();
                xv2Var.postValue(new tj(tj.a.LOADING, tjVar != null ? tjVar.b : null, null, null, 12));
                zi2.i(xkVar.d);
                xkVar.a.g(true);
                break;
        }
    }
}
