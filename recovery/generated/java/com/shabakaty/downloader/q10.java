package com.shabakaty.downloader;

import android.content.Context;
import android.net.Uri;
import com.connectsdk.service.DLNAService;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.TranscodeFile;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.user.LogoutResponse;
import com.shabakaty.cinemana.domain.models.remote.user.LogoutResponseApi;
import com.shabakaty.cinemana.features.SubtitleCompat131;
import com.shabakaty.usermanagement.UserManagement;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class q10 extends xk<p10> {
    public final xv2<List<b41>> A;
    public final xv2<bi2<String, List<b41>>> B;
    public final xv2<Boolean> C;
    public xv2<Boolean> D;
    public xv2<Long> E;
    public final xv2<Long> F;
    public final xv2<Boolean> G;
    public float H;
    public final ff3 f;
    public final q15 g;
    public final rh3.b h;
    public final n24 i;
    public ep0 j;
    public s64 k;
    public UserManagement l;
    public WeakReference<Context> m;
    public final ox4 n;
    public boolean o;
    public int p;
    public List<String> q;
    public final wl<tj<VideoModel>, tj<List<TranscodeFile>>, VideoModel> r;
    public xv2<Boolean> s;
    public xv2<Boolean> t;
    public xv2<String> u;
    public xv2<String> v;
    public xv2<Long> w;
    public final xv2<Boolean> x;
    public xv2<Boolean> y;
    public final xv2<VideoModel> z;

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    @pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$1$1", f = "CinemanaVideoPlayerViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public final /* synthetic */ String w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, ud0<? super a> ud0Var) {
            super(2, ud0Var);
            this.w = str;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            a aVar = q10.this.new a(this.w, ud0Var);
            qv4 qv4Var = qv4.a;
            aVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return q10.this.new a(this.w, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            VideoModel value;
            String str;
            j96.i(obj);
            if (q10.this.n.d(this.w) && (value = q10.this.z.getValue()) != null && (str = value.nb) != null) {
                q10.this.q.add(str);
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    @pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$addToHistory$1$1", f = "CinemanaVideoPlayerViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class b extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public final /* synthetic */ VideoModel w;

        /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
        public static final class a extends af2 implements tm1<LogoutResponse, qv4> {
            public static final a r = new a();

            public a() {
                super(1);
            }

            @Override // com.shabakaty.downloader.tm1
            public /* bridge */ /* synthetic */ qv4 invoke(LogoutResponse logoutResponse) {
                return qv4.a;
            }
        }

        /* JADX INFO: renamed from: com.shabakaty.downloader.q10$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
        public static final class C0179b extends af2 implements tm1<Throwable, qv4> {
            public static final C0179b r = new C0179b();

            public C0179b() {
                super(1);
            }

            @Override // com.shabakaty.downloader.tm1
            public qv4 invoke(Throwable th) {
                j32.e(th, "it");
                r10 r10Var = r10.r;
                return qv4.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(VideoModel videoModel, ud0<? super b> ud0Var) {
            super(2, ud0Var);
            this.w = videoModel;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            b bVar = q10.this.new b(this.w, ud0Var);
            qv4 qv4Var = qv4.a;
            bVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return q10.this.new b(this.w, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            f74<tj<LogoutResponse>> f74VarH;
            j96.i(obj);
            if (!q10.this.q.contains(this.w.nb) && !q10.this.n.d(this.w.nb)) {
                q10.this.q.add(this.w.nb);
                ox4 ox4Var = q10.this.n;
                VideoModel videoModel = this.w;
                j32.d(videoModel, "videoModel");
                Objects.requireNonNull(ox4Var);
                i25 i25VarF = ox4Var.e.f(videoModel);
                if (ox4Var.b.isLoggedIn()) {
                    f74<LogoutResponseApi> f74VarT = ox4Var.a.t(ox4Var.b.getUserId(), videoModel.nb, "1");
                    hx hxVar = new hx(ox4Var.e, 8);
                    Objects.requireNonNull(f74VarT);
                    f74VarH = ox4Var.h(new p74(new v74(f74VarT, hxVar), new mx4(ox4Var, i25VarF, 1)));
                } else {
                    j32.e(i25VarF, "videoModel");
                    ox4Var.c(i25VarF);
                    ox4Var.d.e(i25VarF.r);
                    f74VarH = null;
                }
                if (f74VarH != null) {
                    q10.this.b(f74VarH, a.r, C0179b.r);
                }
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: CinemanaVideoPlayerViewModel.kt */
    @pm0(c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$setVideoProgress$1", f = "CinemanaVideoPlayerViewModel.kt", l = {272}, m = "invokeSuspend")
    public static final class c extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;
        public final /* synthetic */ VideoModel x;
        public final /* synthetic */ long y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(VideoModel videoModel, long j, ud0<? super c> ud0Var) {
            super(2, ud0Var);
            this.x = videoModel;
            this.y = j;
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return q10.this.new c(this.x, this.y, ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return q10.this.new c(this.x, this.y, ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i == 0) {
                j96.i(obj);
                ox4 ox4Var = q10.this.n;
                VideoModel videoModel = this.x;
                long j = this.y;
                this.v = 1;
                ox4Var.c(ox4Var.e.f(videoModel));
                Object objQ = ox4Var.d.q(videoModel.nb, j, this);
                if (objQ != te0Var) {
                    objQ = qv4.a;
                }
                if (objQ == te0Var) {
                    return te0Var;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(obj);
            }
            return qv4.a;
        }
    }

    public q10(ff3 ff3Var, q15 q15Var, rh3.b bVar, n24 n24Var, ep0 ep0Var, s64 s64Var, UserManagement userManagement, WeakReference<Context> weakReference, ox4 ox4Var) {
        String str;
        j32.e(ff3Var, "prefsManager");
        j32.e(q15Var, "videoInfoUseCases");
        j32.e(bVar, "progressiveMediaSourceFactory");
        j32.e(n24Var, "settings");
        j32.e(ep0Var, "trackSelector");
        j32.e(s64Var, "player");
        j32.e(userManagement, "userManagement");
        j32.e(weakReference, "weakContext");
        j32.e(ox4Var, "userActionsUseCases");
        this.f = ff3Var;
        this.g = q15Var;
        this.h = bVar;
        this.i = n24Var;
        this.j = ep0Var;
        this.k = s64Var;
        this.l = userManagement;
        this.m = weakReference;
        this.n = ox4Var;
        this.q = new ArrayList();
        this.r = new cu(this);
        Boolean bool = Boolean.FALSE;
        this.s = new xv2<>(bool);
        this.t = new xv2<>(bool);
        this.u = new xv2<>("00:00");
        this.v = new xv2<>("00:00");
        this.w = new xv2<>(0L);
        this.x = new xv2<>(bool);
        this.y = new xv2<>(bool);
        xv2<VideoModel> xv2Var = new xv2<>();
        this.z = xv2Var;
        this.A = new xv2<>(new ArrayList());
        this.B = new xv2<>(new bi2());
        this.C = new xv2<>(bool);
        this.D = new xv2<>(Boolean.TRUE);
        this.E = new xv2<>(0L);
        this.F = new xv2<>(0L);
        this.G = new xv2<>(bool);
        VideoModel value = xv2Var.getValue();
        if (value != null && (str = value.nb) != null) {
            nh3.y(e(), null, 0, new a(str, null), 3, null);
        }
        this.H = 1.0f;
    }

    public final void l() {
        VideoModel value = this.z.getValue();
        if (value == null) {
            return;
        }
        nh3.y(e(), null, 0, new b(value, null), 3, null);
    }

    public final VideoModel m(VideoModel videoModel, List<TranscodeFile> list) {
        List<Quality> listZ0;
        videoModel.g(q(DLNAService.DEFAULT_SUBTITLE_TYPE, videoModel));
        videoModel.i(q("vtt", videoModel));
        if (list == null) {
            listZ0 = null;
        } else {
            ArrayList arrayList = new ArrayList(i50.O(list, 10));
            for (TranscodeFile transcodeFile : list) {
                arrayList.add(new Quality(transcodeFile.resolution, transcodeFile.name, transcodeFile.videoUrl));
            }
            listZ0 = m50.z0(arrayList);
        }
        if (listZ0 == null) {
            listZ0 = new ArrayList<>();
        }
        videoModel.m(listZ0);
        if ((!videoModel.actorsInfo.isEmpty()) && j32.a(videoModel.actorsInfo.get(0).s, "nostaff")) {
            videoModel.f(w21.r);
        }
        return videoModel;
    }

    public final int n() {
        return this.i.c().seekPeriod;
    }

    public final boolean o() {
        return this.i.c().showSubtitles;
    }

    @Override // com.shabakaty.downloader.xk, com.shabakaty.downloader.o35
    public void onCleared() {
        this.m.clear();
        super.onCleared();
    }

    public final hg4 p() {
        return this.i.g().e;
    }

    public final String q(String str, VideoModel videoModel) {
        List<Subtitle> arrayList = videoModel == null ? null : videoModel.subtitles;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (Subtitle subtitle : arrayList) {
            if (j32.a(subtitle.type, "ar") && j32.a(subtitle.extention, str)) {
                return subtitle.file;
            }
        }
        return "https://cinemana.shabakaty.cc/defaultImages/loading.gif";
    }

    public final List<dp2.h> r() {
        String str;
        List<Subtitle> listS = s();
        ArrayList arrayList = new ArrayList(i50.O(listS, 10));
        for (Subtitle subtitle : listS) {
            if (j32.a(subtitle.type, "sp")) {
                str = "text/x-ssa";
            } else if (j32.a(subtitle.extention, "vtt")) {
                str = "text/vtt";
            } else {
                str = (j32.a(subtitle.extention, "ass") || j32.a(subtitle.extention, "ssa")) ? "text/x-ssa" : "application/x-subrip";
            }
            String str2 = subtitle.file;
            if (!str2.startsWith("embedded://")) {
                Uri uri = Uri.parse(str2);
                j32.d(uri, "parse(this)");
                arrayList.add(new dp2.h(uri, str, subtitle.type, 1));
            }
        }
        return m50.z0(arrayList);
    }

    public final List<Subtitle> s() {
        List<Subtitle> list;
        VideoModel value = this.z.getValue();
        List<Subtitle> arrayList = null;
        if (value != null && (list = value.subtitles) != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                Subtitle subtitle = (Subtitle) obj;
                if ((j32.a(subtitle.name, "file") || !j32.a(subtitle.extention, "vtt")) && (ne4.D(subtitle.file) ^ true)) {
                    arrayList2.add(obj);
                }
            }
            arrayList = m50.z0(arrayList2);
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        WeakReference<Context> weakReference = this.m;
        if (weakReference == null) {
            return arrayList;
        }
        Context context = weakReference.get();
        if (!(context instanceof Context)) {
            return arrayList;
        }
        Context context2 = context;
        VideoModel value2 = this.z.getValue();
        return value2 != null ? SubtitleCompat131.appendPreservingImported(context2, value2, arrayList, this.k) : arrayList;
    }

    public final int t() {
        return this.f.a.getInt("key_video_scale_mode", 0);
    }

    public final void u() {
        String str;
        Float fY;
        long jX = this.k.X();
        VideoModel value = this.z.getValue();
        Long lValueOf = null;
        if (value != null && (str = value.duration) != null && (fY = me4.y(str)) != null) {
            lValueOf = Long.valueOf(((long) fY.floatValue()) * ((long) 1000));
        }
        Long lValueOf2 = jX == CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED ? lValueOf : Long.valueOf(jX);
        this.v.setValue(lValueOf2 == null ? "00:00" : kf5.k(lValueOf2.longValue()));
        xv2<Long> xv2Var = this.F;
        if (jX != 0 && jX != CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED) {
            lValueOf = Long.valueOf(jX);
        }
        xv2Var.setValue(lValueOf);
    }

    public final e92 v(VideoModel videoModel, long j) {
        j32.e(videoModel, "videoModel");
        return nh3.y(e(), null, 0, new c(videoModel, j, null), 3, null);
    }
}
