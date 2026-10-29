package com.shabakaty.downloader;

import com.connectsdk.service.DLNAService;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.TranscodeFile;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.profile_fragment.UserViewInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: Functions.java */
/* JADX INFO: loaded from: classes.dex */
public final class do1 {
    public static final in1<Object, Object> a = new h();
    public static final Runnable b = new g();
    public static final j2 c = new d();
    public static final xc0<Object> d = new e();
    public static final xc0<Throwable> e = new j();
    public static final gl2 f = new f();
    public static final ye3<Object> g = new k();

    /* JADX INFO: compiled from: Functions.java */
    public static final class a<T1, T2, R> implements in1<Object[], R> {
        public final wl<? super T1, ? super T2, ? extends R> r;

        public a(wl<? super T1, ? super T2, ? extends R> wlVar) {
            this.r = wlVar;
        }

        @Override // com.shabakaty.downloader.in1
        public Object apply(Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2.length == 2) {
                return this.r.apply(objArr2[0], objArr2[1]);
            }
            StringBuilder sbA = um3.a("Array of size 2 expected but got ");
            sbA.append(objArr2.length);
            throw new IllegalArgumentException(sbA.toString());
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class b<T1, T2, T3, R> implements in1<Object[], R> {
        public final l91 r;

        public b(l91 l91Var) {
            this.r = l91Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.shabakaty.downloader.in1
        public Object apply(Object[] objArr) {
            List<Quality> listZ0;
            VideoModel videoModel;
            List<ob4> list;
            ob4 ob4Var;
            Object[] objArr2 = objArr;
            if (objArr2.length != 3) {
                StringBuilder sbA = um3.a("Array of size 3 expected but got ");
                sbA.append(objArr2.length);
                throw new IllegalArgumentException(sbA.toString());
            }
            l91 l91Var = this.r;
            Object obj = objArr2[0];
            Object obj2 = objArr2[1];
            Object obj3 = objArr2[2];
            u15 u15Var = (u15) l91Var.s;
            tj tjVar = (tj) obj;
            tj tjVar2 = (tj) obj2;
            tj tjVar3 = (tj) obj3;
            j32.e(u15Var, "this$0");
            j32.e(tjVar, "videoModel");
            j32.e(tjVar2, "transcodeFiles");
            j32.e(tjVar3, "videoStatus");
            VideoModel videoModel2 = (VideoModel) tjVar.b;
            if (videoModel2 != null) {
                videoModel2.g(u15Var.t(DLNAService.DEFAULT_SUBTITLE_TYPE, videoModel2));
                videoModel2.i(u15Var.t("vtt", (VideoModel) tjVar.b));
                List<TranscodeFile> list2 = (List) tjVar2.b;
                if (list2 == null) {
                    listZ0 = null;
                } else {
                    ArrayList arrayList = new ArrayList(i50.O(list2, 10));
                    for (TranscodeFile transcodeFile : list2) {
                        arrayList.add(new Quality(transcodeFile.resolution, transcodeFile.name, transcodeFile.videoUrl));
                    }
                    listZ0 = m50.z0(arrayList);
                }
                if (listZ0 == null) {
                    listZ0 = new ArrayList<>();
                }
                videoModel2.m(listZ0);
                VideoModel videoModel3 = (VideoModel) tjVar.b;
                if (j32.a((videoModel3 == null || (list = videoModel3.actorsInfo) == null || (ob4Var = (ob4) m50.b0(list)) == null) ? null : ob4Var.s, "nostaff") && (videoModel = (VideoModel) tjVar.b) != null) {
                    videoModel.f(w21.r);
                }
                videoModel2.status = (q25) tjVar3.b;
            }
            VideoModel videoModel4 = (VideoModel) tjVar.b;
            ag6 ag6Var = new ag6(17, (io2) null);
            u15Var.w.postValue(j32.a(videoModel4 == null ? null : videoModel4.kind, "1") ? (hd0) ((Map) ag6Var.t).get(videoModel4.filmRating) : (hd0) ((Map) ag6Var.s).get(videoModel4 != null ? videoModel4.seriesRating : null));
            return new tj(tj.a.SUCCESS, tjVar.b, null, null, 12);
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class c<T1, T2, T3, T4, R> implements in1<Object[], R> {
        public final dx4 r;

        public c(dx4 dx4Var) {
            this.r = dx4Var;
        }

        @Override // com.shabakaty.downloader.in1
        public Object apply(Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2.length != 4) {
                StringBuilder sbA = um3.a("Array of size 4 expected but got ");
                sbA.append(objArr2.length);
                throw new IllegalArgumentException(sbA.toString());
            }
            dx4 dx4Var = this.r;
            Object obj = objArr2[0];
            Object obj2 = objArr2[1];
            Object obj3 = objArr2[2];
            Object obj4 = objArr2[3];
            Objects.requireNonNull(dx4Var);
            String str = (String) obj;
            String str2 = (String) obj2;
            String str3 = (String) obj3;
            String str4 = (String) obj4;
            j32.d(str, "a");
            j32.d(str2, "b");
            j32.d(str3, "c");
            j32.d(str4, "d");
            return new UserViewInfo(str, str2, str3, str4);
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class d implements j2 {
        @Override // com.shabakaty.downloader.j2
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class e implements xc0<Object> {
        @Override // com.shabakaty.downloader.xc0
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class f implements gl2 {
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class g implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class h implements in1<Object, Object> {
        @Override // com.shabakaty.downloader.in1
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class i<T, U> implements Callable<U>, in1<T, U> {
        public final U r;

        public i(U u) {
            this.r = u;
        }

        @Override // com.shabakaty.downloader.in1
        public U apply(T t) {
            return this.r;
        }

        @Override // java.util.concurrent.Callable
        public U call() {
            return this.r;
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class j implements xc0<Throwable> {
        @Override // com.shabakaty.downloader.xc0
        public void accept(Throwable th) {
            xv3.b(new o63(th));
        }
    }

    /* JADX INFO: compiled from: Functions.java */
    public static final class k implements ye3<Object> {
        @Override // com.shabakaty.downloader.ye3
        public boolean a(Object obj) {
            return true;
        }
    }
}
